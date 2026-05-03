abbr -a -- _ sudo

if command -q bat
    alias cat 'bat --pager=never'
end

function lspath
    string join \n $PATH | grep -v '/mnt'
end

function gi
    curl -sL https://www.toptal.com/developers/gitignore/api/$argv
end

function 24bitcolor
    bash (curl -sL https://gist.githubusercontent.com/Liumingxun/a8fc3578bd88d076b2f9fe3fdc0ead13/raw/1875ff9b84a014214d0ce9d922654bb34001198e/24-bit-color.sh | psub)
end
