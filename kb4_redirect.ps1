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
# MIIFdwYJKoZIhvcNAQcCoIIFaDCCBWQCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCDsMf1/YZlAjNzA
# 7iJ7NyEO4dSyfeiaerIMOHdMwJAHPKCCAvYwggLyMIIB2qADAgECAhA8DrSKIkO5
# iUwjEhKK1/QwMA0GCSqGSIb3DQEBCwUAMBExDzANBgNVBAMMBkFya3RvczAeFw0y
# NDEwMjEyMjExMDJaFw0yNTEwMjEyMjMxMDJaMBExDzANBgNVBAMMBkFya3RvczCC
# ASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMDJsov/84F50amB1b6CnUCl
# dW+IzzI0aT1iP7cxtPJIEXJHKluHrbAVWbFTCjbVLvFrkCg81fISCT0RIM0JAI/K
# 6FpWse4WNu56pARE3T20dn2uExebKoDoTnQBImNABdi6jgc7OAaSn4iU+wlO9R0a
# ssgzAmAFp6FCjcoKBqP2pPCVXiaCeo25wMQzR27j7vYRf0G0WSP7gqL2tlUOYX1h
# ckn3EQ2LWgYz64YMnmEph2jZ+iIKpdr0KHuO89g9UuiKKXXMwqBSQUwDcsNTPt4T
# uWkFEAHuSVPmLVg71+luVNh/3XZwL4gXDj+OqW/5F2arYwF7TwF8ypJvgf61BcUC
# AwEAAaNGMEQwDgYDVR0PAQH/BAQDAgeAMBMGA1UdJQQMMAoGCCsGAQUFBwMDMB0G
# A1UdDgQWBBQNcwnAGT0DaE1ApfN8C2obLgTh5TANBgkqhkiG9w0BAQsFAAOCAQEA
# bIlQX8sR6ZMkW3CtcZdNdZUs+lpd3RVGBeFpJJvQXCmGYhTSFsP66vG2+nuH098B
# SBAdWRAHwupSk6d4Q0GOYKuFUaqq8aJBFROoHFpgbm5Sh9mvwvGxAc1QUUJ/KnW2
# FbFhCoq4XB4F+240oSOuzteGGwoee1JzmryWbhZMqHZRwzUgOfB6Odp3QCBGrbtg
# 1OZBQejTwp0/KIFXHiEjzEP2n0K8BmiymvASCm0hFAXaTRn+QTSVE7GfNbwARW13
# Xq6pb1hHuXZ30ndvZbynALfgzZkCa0KI0bMIupRhfTUJcw2zuuMnwhCNbLocMkyy
# PwX7c9zAD042xlx7uoiGNjGCAdcwggHTAgEBMCUwETEPMA0GA1UEAwwGQXJrdG9z
# AhA8DrSKIkO5iUwjEhKK1/QwMA0GCWCGSAFlAwQCAQUAoIGEMBgGCisGAQQBgjcC
# AQwxCjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYB
# BAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIG/+M1HK6EMx
# zfFOC1GvYnGNw4qZZeLD0r93OUt9js1GMA0GCSqGSIb3DQEBAQUABIIBALZpke6g
# kQULtY9UPg/CpOBFXJIB/5sbAWDmnfLyYTiBkok/nyMIB+GxqZ3sjpVXZJVRfbqr
# IJJaBuFK1YS5wIw0dPqVKmFifa784c9Et+ueMIEWzb82GdEwXePPpMuqOek39qMh
# dDZPdkvL1/vehGwDUlSBK4KqazRyXEKAXToT1Fl5uyrs/y5DiQHwM82vioX2xADE
# +bq5oaCahl3e994kP5WM6vKICP5WtXlKQl9ViuJnMxe936ZUMOwzJfXIEBF5nqdp
# Zn2cVsDJ3HzUirKI5M2IF5PfX5cNT6Gqrqbp2H6IZ4n47CcloT1wnClqqZJtkOI0
# +cp7maMmoqmwQVg=
# SIG # End signature block
