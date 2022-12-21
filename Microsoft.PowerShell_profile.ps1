oh-my-posh init pwsh --config 'C:\Users\anpig\AppData\Local\Programs\oh-my-posh\themes\powerlevel10k_rainbow.omp.json' | Invoke-Expression
Set-PSReadlineKeyHandler -Key ctrl+d -Function ViExit
function ssh-copy-id {
    type $env:USERPROFILE\.ssh\id_rsa.pub | ssh $args "cat >> .ssh/authorized_keys"
}
