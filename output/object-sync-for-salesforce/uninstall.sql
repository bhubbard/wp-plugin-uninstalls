-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('object_sync_for_salesforce_use_soap', 'object_sync_for_salesforce_soap_wsdl_path', 'salesforce_api_object_filters', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '%consumer_key';
DELETE FROM wp_options WHERE option_name LIKE '%consumer_secret';
DELETE FROM wp_options WHERE option_name LIKE '%callback_url';
DELETE FROM wp_options WHERE option_name LIKE '%login_base_url';
DELETE FROM wp_options WHERE option_name LIKE '%authorize_url_path';
DELETE FROM wp_options WHERE option_name LIKE '%token_url_path';
DELETE FROM wp_options WHERE option_name LIKE '%db_version';
DELETE FROM wp_options WHERE option_name LIKE '%activate_time';
DELETE FROM wp_options WHERE option_name LIKE '%triggers_to_log';
DELETE FROM wp_options WHERE option_name LIKE '%push_schedule_number';
DELETE FROM wp_options WHERE option_name LIKE '%push_schedule_unit';
DELETE FROM wp_options WHERE option_name LIKE '%salesforce_schedule_number';
DELETE FROM wp_options WHERE option_name LIKE '%salesforce_schedule_unit';
DELETE FROM wp_options WHERE option_name LIKE '%enable_logging';
DELETE FROM wp_options WHERE option_name LIKE '%disable_mapped_fields';
DELETE FROM wp_options WHERE option_name LIKE '%salesforce_field_display_value';
DELETE FROM wp_options WHERE option_name LIKE '%access_token';
DELETE FROM wp_options WHERE option_name LIKE '%instance_url';
DELETE FROM wp_options WHERE option_name LIKE '%refresh_token';
DELETE FROM wp_options WHERE option_name LIKE '%delete_data_on_uninstall';
DELETE FROM wp_options WHERE option_name LIKE '%statuses_to_log';
DELETE FROM wp_options WHERE option_name LIKE '%debug_mode';
DELETE FROM wp_options WHERE option_name LIKE '%logs_how_often_unit';
DELETE FROM wp_options WHERE option_name LIKE '%logs_how_often_number';
DELETE FROM wp_options WHERE option_name LIKE '%prune_logs';
DELETE FROM wp_options WHERE option_name LIKE '%logs_how_old';
DELETE FROM wp_options WHERE option_name LIKE '%logs_how_many_number';
DELETE FROM wp_options WHERE option_name LIKE '%errors_per_page';
DELETE FROM wp_options WHERE option_name LIKE '%upgradeable_keys';
DELETE FROM wp_options WHERE option_name LIKE '%action_scheduler_batch_size';
DELETE FROM wp_options WHERE option_name LIKE '%action_scheduler_concurrent_batches';
DELETE FROM wp_options WHERE option_name LIKE '%_schedule_number';
DELETE FROM wp_options WHERE option_name LIKE '%_schedule_unit';
DELETE FROM wp_options WHERE option_name LIKE '%identity';
DELETE FROM wp_options WHERE option_name LIKE '%installed_version';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key LIKE '_wp_log_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_wp_log_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_wp_log_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wp_log_%';

