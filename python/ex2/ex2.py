import pandas as pd
import plotly.express as px

df = pd.read_csv("supermarket_sales.csv", sep=";", decimal=",")
df["Date"] = pd.to_datetime(df["Date"])
df=df.sort_values("Date")

df["Month"] = df["Date"].apply(lambda x: str(x.year) + "-" + str(x.month))
month = "2019-08"

df_filtered = df[df["Month"] == month]

fig_date = px.bar(df_filtered, x="Date", y="Total", color="City", title="Faturamento por dia")

fig_prod = px.bar(df_filtered, x="Date", y="Product line", 
                  color="City", title="Faturamento por tipo de produto",
                  orientation="h")


city_total = df_filtered.groupby("City")[["Total"]].sum().reset_index()
fig_city = px.bar(city_total, x="City", y="Total",
                   title="Faturamento por filial")


fig_kind = px.pie(df_filtered, values="Total", names="Payment",
                   title="Faturamento por tipo de pagamento")


city_total = df_filtered.groupby("City")[["Rating"]].mean().reset_index()
fig_rating = px.bar(df_filtered, y="Rating", x="City",
                   title="Avaliação")
