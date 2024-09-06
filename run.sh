execute_task() {
    task_name=$1
    if [ ! -f "did_${task_name}" ]; then
        printf '\e[1;32mExecuting task %s\e[0m\n' "${task_name}" | tee -a tasks.log
        ./${task_name}.sh >> tasks.log 2>&1
        touch "did_${task_name}"
    else
        printf '\e[1;33mSkipping task %s\e[0m\n' "${task_name}" | tee -a tasks.log
    fi
}

printf '\n\n\e[1;34mExecution started at %s\e[0m\n' "$(date)" | tee -a tasks.log
execute_task "sudo"
execute_task "basics"
execute_task "rust"
execute_task "go"
execute_task "atuin"
execute_task "inputrc"
execute_task "bash_alias"
execute_task "vimrc"
execute_task "gh"
execute_task "nvim"

source ~/.bashrc
