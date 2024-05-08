add-DnsServerResourceRecord -zonename ngcp22.com -A -name ns -ipv4address 10.22.1.10
add-DnsServerResourceRecord -zonename ngcp22.com -A -name "." -ipv4address 10.22.1.10
#
add-DnsServerResourceRecord -zonename ngcp22.com -Cname -name www -hostname ns.ngcp22.com
add-DnsServerResourceRecord -zonename ngcp22.com -Cname -name pop -hostname ns.ngcp22.com
add-DnsServerResourceRecord -zonename ngcp22.com -Cname -name imap -hostname ns.ngcp22.com
add-DnsServerResourceRecord -zonename ngcp22.com -Cname -name smtp -hostname ns.ngcp22.com
#
Add-DnsServerResourceRecordMX -Preference 10  -Name "." -MailExchange "ns.ngcp22.com" -ZoneName "ngcp22.com"

