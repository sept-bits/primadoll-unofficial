51..72 | % {
    $p = ([string]$_).PadLeft(2,'0')
    $p
    "---"
    51..99 | % {
    $_ = ([string]$_).PadLeft(2,'0')
    $_
    Invoke-WebRequest -Uri "https://key.visualarts.gr.jp/primadoll/common/voice/$($p)_$($_).mp3" -OutFile "$($p)_$($_).mp3"
    }
    "==="
}