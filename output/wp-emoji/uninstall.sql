-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('WPE_where_emoji_support', 'WPE_emoji_convert_to');

