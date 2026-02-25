-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('vigisesc_logs_status', 'comment_previously_approved', 'whitelist_keys', 'comment_moderation_email', 'vigisesc_settings');

