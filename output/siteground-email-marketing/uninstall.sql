-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sg_email_marketing_initial_activation', 'sg_email_marketing_version', 'sg_email_marketing_update_timestamp', 'sg_email_marketing_token', 'sg_email_marketing_seen', 'sg_email_marketing_token_status', '_sg_email_marketing_installing');
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('sg_email_marketing_user_data', 'sg_email_marketing_groups');
DELETE FROM wp_usermeta WHERE meta_key IN ('sg_email_marketing_user_data', 'sg_email_marketing_groups');
DELETE FROM wp_termmeta WHERE meta_key IN ('sg_email_marketing_user_data', 'sg_email_marketing_groups');
DELETE FROM wp_commentmeta WHERE meta_key IN ('sg_email_marketing_user_data', 'sg_email_marketing_groups');

