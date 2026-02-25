-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp-backitup_dismissed_notices', 'active_sitewide_plugins', 'wp-backitup_new_install', 'wp-backitup_major_version', 'wp-backitup_minor_version', 'wp-backitup_logging', 'wp-backitup_db_version', 'wp-backitup_backup_batch_size', 'wp-backitup_lite_registration_first_name', 'wp-backitup_license_customer_name', 'wp-backitup_lite_registration_email', 'wp-backitup_license_customer_email', 'wp-backitup_backup_dbtables_batch_size', 'wp-backitup_license_product_id', 'wp-backitup_license_type', 'update_plugins', 'update_themes', 'update_core', 'wpbackitup_admin_notices', '_wpbackitup_activation_redirect', 'error-support-email', 'error-support-ticket', 'settings_errors', 'support_ticket_id', 'support_body', 'error-support-body');
DELETE FROM wp_options WHERE option_name LIKE '%_critical_plugins';
DELETE FROM wp_options WHERE option_name LIKE '%_critical_options';
DELETE FROM wp_options WHERE option_name LIKE '%_delete_all';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wp-backitup_dismissed_notices', '_wp_attachment_is_custom_header', '_wp_attachment_is_custom_background');
DELETE FROM wp_usermeta WHERE meta_key IN ('wp-backitup_dismissed_notices', '_wp_attachment_is_custom_header', '_wp_attachment_is_custom_background');
DELETE FROM wp_termmeta WHERE meta_key IN ('wp-backitup_dismissed_notices', '_wp_attachment_is_custom_header', '_wp_attachment_is_custom_background');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wp-backitup_dismissed_notices', '_wp_attachment_is_custom_header', '_wp_attachment_is_custom_background');

