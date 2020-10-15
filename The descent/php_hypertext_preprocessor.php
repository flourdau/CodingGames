<?php
while (TRUE)
{
$top = 0;
$index = 0;
    
    for ($i = 0; $i < 8; $i++)
    {
        // $mountainH: represents the height of one mountain.
        fscanf(STDIN, "%d", $mountainH);
        
        if ($top < $mountainH) {
            $top = $mountainH;
            $index = $i;
        }
    }

    // Write an action using echo(). DON'T FORGET THE TRAILING \n
    // To debug: error_log(var_export($var, true)); (equivalent to var_dump)

    print($index . "\n"); // The index of the mountain to fire on.
}
?>