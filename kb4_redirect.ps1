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