$siblings = @(
    "Remus",
    "Peter",
    "Gabriel",
    "Matthew",
    "Jennifer"
    )

$names = @()

<#
$names = new-object psobject -Property @{
    firstname   = "Peter";
    Lastname    = "Jasmin"
}
#>

foreach ($name in $siblings)
{
    $names += new-object psobject -Property @{
        firstname   = $name;
        Lastname    = "Jasmin"
    }
    
}

$names | Select-Object firstname,lastname | sort firstname