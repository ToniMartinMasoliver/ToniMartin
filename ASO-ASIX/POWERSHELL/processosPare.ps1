
# PROCESSOS PARE I THREADS

$processos = Get-Process

foreach ($proces in $processos) {
    try {
        $threads = $proces.Threads
        $separador = "=" * 30

        Write-Output ""
        Write-Output "$separador $($proces.ProcessName) ($($proces.Id)) $separador"
        Write-Output ""
        Write-Output "Total threads: $($threads.Count)"
        Write-Output ""

        foreach ($fil in $threads) {
            try {
                $tempsCPU = $fil.TotalProcessorTime
            }
            catch {
                $tempsCPU = ""
            }

            Write-Output "ID: $($fil.Id) CPU TIME: $tempsCPU"
        }
    }
    catch {
        # Alguns processos no permeten consultar els seus threads
    }
}
