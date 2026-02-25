-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('afop_plugin_version', 'afop_db_version', 'afop_settings', 'afop_blocked_disposable_domains', 'afop_delete_data_on_uninstall', 'afop_legacy_blocks_migrated', 'afop_all_blocked_ips', 'afop_all_blocked_emails', 'afop_all_blocked_users', 'afop_admin_notice');
DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%';
DELETE FROM wp_options WHERE option_name LIKE 'afop_ip_perm_block_%';
DELETE FROM wp_options WHERE option_name LIKE 'afop_ip_block_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'afop_email_perm_block_%';
DELETE FROM wp_options WHERE option_name LIKE 'afop_email_block_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'afop_user_perm_block_%';
DELETE FROM wp_options WHERE option_name LIKE 'afop_user_block_data_%';
DELETE FROM wp_options WHERE option_name LIKE 'afop_temp_block_count_%';
DELETE FROM wp_options WHERE option_name LIKE 'afop_fast_attempts_%';

