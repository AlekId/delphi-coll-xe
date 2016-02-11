@rem * Copyright (c) 2016, Peter Johnson (@delphidabbler)
@rem * All rights reserved.
@rem *
@rem * Redistribution and use in source and binary forms, with or without
@rem * modification, are permitted provided that the following conditions are
@rem * met:
@rem *
@rem * 1. Redistributions of source code must retain the above copyright notice,
@rem *    this list of conditions and the following disclaimer.
@rem *
@rem * 2. Redistributions in binary form must reproduce the above copyright
@rem *    notice, this list of conditions and the following disclaimer in the
@rem *    documentation and/or other materials provided with the distribution.
@rem *
@rem * 3. Neither the name of the copyright holder nor the names of its
@rem *    contributors may be used to endorse or promote products derived from
@rem *    this software without specific prior written permission.
@rem *
@rem * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
@rem * IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
@rem * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
@rem * PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
@rem * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
@rem * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
@rem * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
@rem * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
@rem * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
@rem * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
@rem * SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


@echo off

setlocal

set RootDir=.

echo Deleting temporary files

del /S %RootDir%\*.~*
del /S %RootDir%\*.bak
del /S %RootDir%\*.ddp
del /S %RootDir%\*.dsk
del /S /AH %RootDir%\*.GID
del /S %RootDir%\*.identcache
del /S %RootDir%\*.local
del /S %RootDir%\*.tmp
echo.

echo Deleting build and history sub-directories

if exist %RootDir%\bin rmdir /S /Q %RootDir%\bin

for /F "usebackq" %%i in (`dir /S /B /A:D %RootDir%\__history*`) do rmdir /S /Q %%i

echo Done.

endlocal
