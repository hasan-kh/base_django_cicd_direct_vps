from django.conf import settings


def add_ip_address_to_allowed_hosts(ip_address):
    settings.ALLOWED_HOSTS.append(ip_address)
