. ./backend-storage.sh

terraform init \
--backend-config="subscription_id=$subscription_id" \
--backend-config="tenant_id=$tenant_id" \
--backend-config="client_id=$client_id" \
--backend-config="client_secret=$client_secret" \
--backend-config="resource_group_name=$st_resource_group_name" \
--backend-config="storage_account_name=$st_storage_account_name" \
--backend-config="container_name=$st_container_name" \
--backend-config="key=test" \
--backend-config="access_key=$st_key" 

terraform workspace new $environment
