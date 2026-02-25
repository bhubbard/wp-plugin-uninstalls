-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('chpdate_enable_settings', 'chpdate_comment_settings', 'chpdate_format_settings');

