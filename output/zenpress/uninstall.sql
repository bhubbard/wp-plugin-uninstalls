-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('zenpress_admin_bar_enabled', 'zenpress_active_snippets');

