$lines = Get-Content 'c:\Users\User\Documents\IVO Website\index.html'
for($i=0; $i -lt $lines.Count; $i++) {
    if($lines[$i] -match '<img class="loader-logo-img"') {
        $lines[$i] = '  <img class="loader-logo-img" src="logo.png" alt="IVO"/>'
    }
    if($lines[$i] -match 'class="nav-logo"') {
        $lines[$i] = '    <img class="nav-logo" src="logo.png" alt="IVO" />'
    }
    if($lines[$i] -match 'class="hero-logo-big"') {
        $lines[$i] = '    <img class="hero-logo-big" src="logo.png" alt="IVO Logo" />'
    }
    if($lines[$i] -match 'class="cta-logo"') {
        $lines[$i] = '    <img class="cta-logo" src="logo.png" alt="IVO" />'
    }
    if($lines[$i] -match 'class="footer-logo"') {
        $lines[$i] = '    <img class="footer-logo" src="logo.png" alt="IVO" />'
    }
}
$lines | Set-Content 'c:\Users\User\Documents\IVO Website\index.html'