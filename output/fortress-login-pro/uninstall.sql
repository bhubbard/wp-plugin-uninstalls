-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fortress_last_promotion_date', 'fortress_smtp_verified', 'fortress_auto_rotation_enabled', 'fortress_auto_rotation_interval', 'fortress_auto_rotation_format', 'fortress_auto_rotation_length', 'fortress_auto_rotation_char_length', 'fortress_auto_rotation_include_numbers', 'fortress_last_rotation_date', 'fortress_active_slug', 'fortress_smtp_host', 'fortress_smtp_port', 'fortress_smtp_encryption', 'fortress_smtp_username', 'fortress_smtp_password', 'fortress_smtp_from_email', 'fortress_smtp_from_name', 'fortress_smtp_recipient_email', 'fortress_smtp_last_error', 'fortress_block_install_files', 'fortress_next_rotation_slug', 'fortress_login_attempt_logs', 'fortress_pending_slug_expiry', 'fortress_pending_slug_status', 'fortress_pending_slug', 'fortress_pending_slug_created', 'fortress_slug_history', 'fortress_flush_rewrite_rules', 'fortress_htaccess_error', 'fortress_slug_history_migrated', 'fortress_last_added_pending_slug', 'rewrite_rules', 'fortress_last_login_attempt', 'fortress_uninstall_error', 'fortress_slug_rotated', 'fortress_slug_promoted', 'fortress_smtp_test_result');
DELETE FROM wp_options WHERE option_name LIKE 'fortress_login_slug_used_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('fortress_last_login');
DELETE FROM wp_usermeta WHERE meta_key IN ('fortress_last_login');
DELETE FROM wp_termmeta WHERE meta_key IN ('fortress_last_login');
DELETE FROM wp_commentmeta WHERE meta_key IN ('fortress_last_login');

