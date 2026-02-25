-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('surecontact_sync_batches', 'surecontact_sync_job_cancelled', 'surecontact_third_party_integrations', 'surecontact_workspace_uuid', 'surecontact_bearer_token', 'surecontact_connection_id', 'surecontact_last_status_sync', 'surecontact_last_bulk_sync', 'surecontact_last_field_sync', 'surecontact_synced_metadata', 'surecontact_contact_fields', 'surecontact_custom_metafields', 'surecontact_general_settings', 'surecontact_api_queue_table_version', 'surecontact_integrations_table_version', 'surecontact_db_version', 'surecontact_api_circuit_breaker', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE 'surecontact_latepoint_tracked_%';
DELETE FROM wp_options WHERE option_name LIKE 'surecontact_woo_processing_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wcf-step-type', 'wcf-order-bumps', 'video_id', 'first_name', 'nickname', 'last_name', 'suremembers_user_access_group', '_surecontact_review_tagged');
DELETE FROM wp_usermeta WHERE meta_key IN ('wcf-step-type', 'wcf-order-bumps', 'video_id', 'first_name', 'nickname', 'last_name', 'suremembers_user_access_group', '_surecontact_review_tagged');
DELETE FROM wp_termmeta WHERE meta_key IN ('wcf-step-type', 'wcf-order-bumps', 'video_id', 'first_name', 'nickname', 'last_name', 'suremembers_user_access_group', '_surecontact_review_tagged');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wcf-step-type', 'wcf-order-bumps', 'video_id', 'first_name', 'nickname', 'last_name', 'suremembers_user_access_group', '_surecontact_review_tagged');

