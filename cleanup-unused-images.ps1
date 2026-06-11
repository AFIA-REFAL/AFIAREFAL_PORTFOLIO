$files = @(
    'images\\apple-touch-icon.png',
    'images\\hero-bg.jpg',
    'images\\hero.jpeg',
    'images\\portfolio-details-1.jpg',
    'images\\portfolio-details-2.jpg',
    'images\\portfolio-details-3.jpg',
    'images\\post-1.jpg',
    'images\\post-2.jpg',
    'images\\post-3.jpg',
    'images\\testimonial-2.jpg',
    'images\\work-6.jpg'
)

foreach ($f in $files) {
    if (Test-Path $f) {
        Remove-Item -Force -ErrorAction SilentlyContinue $f
        Write-Output "Removed: $f"
    } else {
        Write-Output "Not found: $f"
    }
}