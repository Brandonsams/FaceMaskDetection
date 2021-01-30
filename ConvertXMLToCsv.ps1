Get-ChildItem  ./Kaggle-MaskDetection/annotations | ForEach-Object {
    $xml = ([xml](get-content $_)).annotation
    $filename = $xml.filename
    $width = [int]$xml.size.width
    $height = [int]$xml.size.height
    $xml.object | ForEach-Object {
        $obj = $_
        $class = $obj.name
        $xmin = [int]$obj.bndbox.xmin
        $ymin = [int]$obj.bndbox.ymin
        $xmax = [int]$obj.bndbox.xmax
        $ymax = [int]$obj.bndbox.ymax
        [pscustomobject]@{
            filename = $filename
            width    = $width
            height   = $height
            class    = $class
            xmin     = $xmin
            ymin     = $ymin
            xmax     = $xmax
            ymax     = $ymax
        }
    }
} | Export-Csv annotations.csv -Verbose
