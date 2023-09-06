function Get-SortedArray
{
  param (
    [int[]]$Unsorted
  )
  for ( $i = 0; $i -lt $Unsorted.Length; $i++)
  {
    for ($j = $i; $j -gt 0; $j--)
    {
      if ($Unsorted[$j - 1] -lt $Unsorted[$j])
      {
        continue
      }
      $temp = $Unsorted[$j]
      $Unsorted[$j] = $Unsorted[$j - 1]
      $Unsorted[$j - 1] = $temp
    }
  }
  return $Unsorted
}
