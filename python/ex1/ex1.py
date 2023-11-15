import ipaddress


def valida_ip(ip: str) -> bool:
    try:
        ipaddress.ip_address(ip)
        return True
    except:
        return False


def main():
    with open(r'python\lista_de_ips.txt', 'r') as file:
        ip_list = file.readlines()

    ip_list = list(map(lambda x: x.replace('\n',''), ip_list))
    
    ips_validos = list(filter(valida_ip, ip_list))
    ips_invalidos= list(filter(lambda x: not valida_ip(x), ip_list))
    
    with open(r'python\resultado_ex1.txt', 'w', encoding="UTF-8") as file:
        file.write("[Endereços válidos:]")
        file.write(' '.join(ips_validos))
        file.write("\n[Endereços inválidos:]")
        file.write(' '.join(ips_invalidos))
    
    
main()
