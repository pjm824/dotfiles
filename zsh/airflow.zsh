# add airflow to pythonpath
export PYTHONPATH="~/projects/airflow/utils:$PYTHONPATH"

# airflow
#export AIRFLOW_HOME=~/projects/airflow
export AIRFLOW__CORE__LOG_FILENAME_TEMPLATE="{{ ti.dag_id }}.log"
