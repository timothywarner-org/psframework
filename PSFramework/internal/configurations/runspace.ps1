﻿#region Setting the configuration
Set-PSFConfig -Module PSFramework -Name 'Runspace.StopTimeoutSeconds' -Value 30 -Initialize -Validation "integerpositive" -Handler { [PSFramework.Runspace.RunspaceHost]::StopTimeoutSeconds = $args[0] } -Description "Time in seconds that Stop-PSFRunspace will wait for a scriptspace to selfterminate before killing it."
Set-PSFConfig -Module PSFramework -Name 'Runspace.RunspaceBoundValue.CleanupInterval' -Value 900000 -Initialize -Validation "integerpositive" -Handler { [PSFramework.Runspace.RunspaceHost]::RbvCleanupInterval = $args[0] } -Description "Interval in milliseconds at which PSFramework will cleanup all Runspace-Bound Values, deleting values for runspaces that no longer exist. Reduce the interval to ensure lower memory peaks in situations of creating and closing runspaces frequently."
#endregion Setting the configuration