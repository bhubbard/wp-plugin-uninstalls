-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adminoptim_db_log', 'adminoptim_last_optimize_db_time', 'action_scheduler_last_pastdue_actions_check', 'action_scheduler_admin_notice', 'as_comment_count');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_adminoptim_locked_%';
DELETE FROM wp_options WHERE option_name LIKE 'default_%';
DELETE FROM wp_options WHERE option_name LIKE 'adminoptim_locked_%';
DELETE FROM wp_options WHERE option_name LIKE 'adminoptim_failed_login_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('adminoptim_2fa', 'adminoptim_disable_account', '_wp_attachment_image_alt', '_adminoptim_lock_modified_date', '_adminoptim_temp_modified_date', 'last_login', '_adminoptim_xml_exclude');
DELETE FROM wp_usermeta WHERE meta_key IN ('adminoptim_2fa', 'adminoptim_disable_account', '_wp_attachment_image_alt', '_adminoptim_lock_modified_date', '_adminoptim_temp_modified_date', 'last_login', '_adminoptim_xml_exclude');
DELETE FROM wp_termmeta WHERE meta_key IN ('adminoptim_2fa', 'adminoptim_disable_account', '_wp_attachment_image_alt', '_adminoptim_lock_modified_date', '_adminoptim_temp_modified_date', 'last_login', '_adminoptim_xml_exclude');
DELETE FROM wp_commentmeta WHERE meta_key IN ('adminoptim_2fa', 'adminoptim_disable_account', '_wp_attachment_image_alt', '_adminoptim_lock_modified_date', '_adminoptim_temp_modified_date', 'last_login', '_adminoptim_xml_exclude');

