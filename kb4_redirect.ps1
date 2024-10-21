# Define the URL
$url = "https://vil-cpm-01.yca.local/guest/kb4_noncompliant.php"

# Function to open the URL in the default browser
function Open-Url {
    param (
        [string]$url
    )

    # Check if a browser is already open
    $browserProcesses = Get-Process -Name "chrome", "firefox", "iexplore", "msedge" -ErrorAction SilentlyContinue
    if ($browserProcesses) {
        # If a browser is open, open a new tab with the URL
        Start-Process $url
    }
    else {
        # If no browser is open, start the default browser with the URL
        Start-Process "cmd" "/c start $url"
    }
}

# Open the URL
Open-Url -url $url

# Delete this script
Remove-Item -Path $MyInvocation.MyCommand.Path -Force
# SIG # Begin signature block
# MIIFUgYJKoZIhvcNAQcCoIIFQzCCBT8CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU9jBqaoX0tt/cn9Wspc1Vw3hf
# ctqgggL2MIIC8jCCAdqgAwIBAgIQPA60iiJDuYlMIxISitf0MDANBgkqhkiG9w0B
# AQsFADARMQ8wDQYDVQQDDAZBcmt0b3MwHhcNMjQxMDIxMjIxMTAyWhcNMjUxMDIx
# MjIzMTAyWjARMQ8wDQYDVQQDDAZBcmt0b3MwggEiMA0GCSqGSIb3DQEBAQUAA4IB
# DwAwggEKAoIBAQDAybKL//OBedGpgdW+gp1ApXVviM8yNGk9Yj+3MbTySBFyRypb
# h62wFVmxUwo21S7xa5AoPNXyEgk9ESDNCQCPyuhaVrHuFjbueqQERN09tHZ9rhMX
# myqA6E50ASJjQAXYuo4HOzgGkp+IlPsJTvUdGrLIMwJgBaehQo3KCgaj9qTwlV4m
# gnqNucDEM0du4+72EX9BtFkj+4Ki9rZVDmF9YXJJ9xENi1oGM+uGDJ5hKYdo2foi
# CqXa9Ch7jvPYPVLoiil1zMKgUkFMA3LDUz7eE7lpBRAB7klT5i1YO9fpblTYf912
# cC+IFw4/jqlv+Rdmq2MBe08BfMqSb4H+tQXFAgMBAAGjRjBEMA4GA1UdDwEB/wQE
# AwIHgDATBgNVHSUEDDAKBggrBgEFBQcDAzAdBgNVHQ4EFgQUDXMJwBk9A2hNQKXz
# fAtqGy4E4eUwDQYJKoZIhvcNAQELBQADggEBAGyJUF/LEemTJFtwrXGXTXWVLPpa
# Xd0VRgXhaSSb0FwphmIU0hbD+urxtvp7h9PfAUgQHVkQB8LqUpOneENBjmCrhVGq
# qvGiQRUTqBxaYG5uUofZr8LxsQHNUFFCfyp1thWxYQqKuFweBftuNKEjrs7XhhsK
# HntSc5q8lm4WTKh2UcM1IDnwejnad0AgRq27YNTmQUHo08KdPyiBVx4hI8xD9p9C
# vAZosprwEgptIRQF2k0Z/kE0lROxnzW8AEVtd16uqW9YR7l2d9J3b2W8pwC34M2Z
# AmtCiNGzCLqUYX01CXMNs7rjJ8IQjWy6HDJMsj8F+3PcwA9ONsZce7qIhjYxggHG
# MIIBwgIBATAlMBExDzANBgNVBAMMBkFya3RvcwIQPA60iiJDuYlMIxISitf0MDAJ
# BgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0B
# CQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAj
# BgkqhkiG9w0BCQQxFgQU7QZnHdgT5MDc70rVGeyUeIlgDI8wDQYJKoZIhvcNAQEB
# BQAEggEAsAddW3hMkCgEy8LrFE1yoTc04/kVswVGEys+Crzcs52Z7t6bGFd70K5F
# f/EbhCv0Fvg6KYhhJKvWFuReZdMRr+WR1PRR8IPlABG6iWm6RwsSH7tMI7zvmV3p
# CsZ39YsimeX6rrRoqBcRAkzxuddGbNziJsEfgl2cVPW/1948qDsDkcXbp7uojmbL
# ixrdPy7avQJ7LM03Xym+2OzjZBrbGrzsSFrfBE3YMfY7lU9h+RlLnIIWOC3saCJp
# d+bmCmnirPe7dVixqsMIB+dPikXtT6cfiWyYXacQir0IU7ncIwL2Eq1ZHgFxrEea
# HOU8YBUT0WtF5c58lSli+5oV+0GX/Q==
# SIG # End signature block
