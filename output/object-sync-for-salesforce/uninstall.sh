#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%consumer_key'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%consumer_secret'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%callback_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%login_base_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%authorize_url_path'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%token_url_path'"
wp option delete 'object_sync_for_salesforce_use_soap'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%activate_time'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%triggers_to_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%push_schedule_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%push_schedule_unit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%salesforce_schedule_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%salesforce_schedule_unit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%enable_logging'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%disable_mapped_fields'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%salesforce_field_display_value'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%instance_url'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%refresh_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%delete_data_on_uninstall'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%statuses_to_log'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%debug_mode'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%logs_how_often_unit'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%logs_how_often_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%prune_logs'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%logs_how_old'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%logs_how_many_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%errors_per_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%upgradeable_keys'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%action_scheduler_batch_size'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%action_scheduler_concurrent_batches'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_schedule_number'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_schedule_unit'"
wp option delete 'object_sync_for_salesforce_soap_wsdl_path'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%identity'"
wp option delete 'salesforce_api_object_filters'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%installed_version' OR option_name LIKE '_site_transient_%installed_version'"
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wp_log_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wp_log_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wp_log_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wp_log_%'"
