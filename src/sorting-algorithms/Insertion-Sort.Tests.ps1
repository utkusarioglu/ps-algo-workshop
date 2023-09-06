BeforeAll {
  . "$PSScriptRoot/Insertion-Sort.ps1"
}

Describe 'Get-SortedArray' {
  It 'Sorts 3 2 1' {
    $response = Get-SortedArray -Unsorted @(3, 2, 1)
    $response | Should -Be @(1, 2, 3)
  }

  It 'Sorts 3 2 1 6' {
    $response = Get-SortedArray -Unsorted @(3, 2, 1, 6)
    $response | Should -Be @(1, 2, 3, 6)
  }

  
  It 'Sorts 3 2 1 6 1 1' {
    $response = Get-SortedArray -Unsorted @(3, 2, 1, 6, 1, 1)
    $response | Should -Be @(1, 1, 1, 2, 3, 6)
  }
}
