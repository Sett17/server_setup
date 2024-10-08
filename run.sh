execute_task() {
    task_name=$1
    if [ ! -f "did_${task_name}" ]; then
        printf '###Executing task %s\n' "${task_name}" | tee -a tasks.log
        ./${task_name}.sh >> tasks.log 2>&1
        touch "did_${task_name}"
    else
        printf '###Skipping task %s\n' "${task_name}" | tee -a tasks.log
    fi
}

start_time=$(date)

printf '\n\nExecution started at %s\n' "$(date)" | tee -a tasks.log

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

end_time=$(date)
printf '\n\nExecution ended at %s and took %s seconds\n' "${end_time}" "$(($(date -d "${end_time}" +%s) - $(date -d "${start_time}" +%s)))" | tee -a tasks.log

source ~/.bashrc
