# Fetch public IPv4 and IPv6 using reliable external services
IPV4=$(curl -s https://api4.ipify.org)
IPV6=$(curl -s https://api6.ipify.org)

# Check if the IPv4 request was successful
if [ -z "$IPV4" ]; then
    IPV4="Not available"
fi

# Check if the IPv6 request was successful
if [ -z "$IPV6" ]; then
    IPV6="Not available"
fi

# Display results
echo "Your public IPv4 address: $IPV4"
echo "Your public IPv6 address: $IPV6"
