@ECHO OFF

SET HOME=%HOMEDRIVE%%HOMEPATH%

REM --------------------------------------------------------------------------------------------------------------------------------

SET ANDROID_STUDIO_PATH_0=%HOME%\.AndroidStudio*

FOR /D %%f IN (%ANDROID_STUDIO_PATH_0%) DO (
	IF EXIST "%%f\config\options\options.xml" (
		DEL "%%f\config\options\options.xml" /Q
	) ELSE (
		IF EXIST "%%f\config\eval\" (
			IF EXIST "%%f\config\options\other.xml" (
				DEL "%%f\config\options\other.xml" /Q
			)
		)
	)
)

FOR /D %%f IN (%ANDROID_STUDIO_PATH_0%) DO (
	IF EXIST "%%f\config\eval\" (
		RMDIR "%%f\config\eval\" /S /Q
	)
)

SET ANDROID_STUDIO_PATH_1=%HOME%\AppData\Roaming\JetBrains\AndroidStudio*

FOR /D %%f IN (%ANDROID_STUDIO_PATH_1%) DO (
	IF EXIST "%%f\eval\" (
		RMDIR "%%f\eval\" /S /Q
	)
)

FOR /D %%f IN (%ANDROID_STUDIO_PATH_1%) DO (
	IF EXIST "%%f\options\other.xml" (
		DEL "%%f\options\other.xml" /Q
	)
)

REM --------------------------------------------------------------------------------------------------------------------------------

SET INTELLIJ_IDEA_PATH_0=%HOME%\.IntelliJIdea*

FOR /D %%f IN (%INTELLIJ_IDEA_PATH_0%) DO (
	IF EXIST "%%f\config\options\options.xml" (
		DEL "%%f\config\options\options.xml" /Q
	) ELSE (
		IF EXIST "%%f\config\eval\" (
			IF EXIST "%%f\config\options\other.xml" (
				DEL "%%f\config\options\other.xml" /Q
			)
		)
	)
)

FOR /D %%f IN (%INTELLIJ_IDEA_PATH_0%) DO (
	IF EXIST "%%f\config\eval\" (
		RMDIR "%%f\config\eval\" /S /Q
	)
)

SET INTELLIJ_IDEA_PATH_1=%HOME%\AppData\Roaming\JetBrains\IntelliJIdea*

FOR /D %%f IN (%INTELLIJ_IDEA_PATH_1%) DO (
	IF EXIST "%%f\eval\" (
		RMDIR "%%f\eval\" /S /Q
	)
)

FOR /D %%f IN (%INTELLIJ_IDEA_PATH_1%) DO (
	IF EXIST "%%f\options\other.xml" (
		DEL "%%f\options\other.xml" /Q
	)
)

REG DELETE "HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains\idea" /F

REM --------------------------------------------------------------------------------------------------------------------------------

SET WEB_STORM_PATH_0=%HOME%\.WebStorm*

FOR /D %%f IN (%WEB_STORM_PATH_0%) DO (
	IF EXIST "%%f\config\options\options.xml" (
		DEL "%%f\config\options\options.xml" /Q
	) ELSE (
		IF EXIST "%%f\config\eval\" (
			IF EXIST "%%f\config\options\other.xml" (
				DEL "%%f\config\options\other.xml" /Q
			)
		)
	)
)

FOR /D %%f IN (%WEB_STORM_PATH_0%) DO (
	IF EXIST "%%f\config\eval\" (
		RMDIR "%%f\config\eval\" /S /Q
	)
)

SET WEB_STORM_PATH_1=%HOME%\AppData\Roaming\JetBrains\WebStorm*

FOR /D %%f IN (%WEB_STORM_PATH_1%) DO (
	IF EXIST "%%f\eval\" (
		RMDIR "%%f\eval\" /S /Q
	)
)

FOR /D %%f IN (%WEB_STORM_PATH_1%) DO (
	IF EXIST "%%f\options\other.xml" (
		DEL "%%f\options\other.xml" /Q
	)
)

REG DELETE "HKEY_CURRENT_USER\Software\JavaSoft\Prefs\jetbrains\webstorm" /F

REM --------------------------------------------------------------------------------------------------------------------------------

PAUSE
