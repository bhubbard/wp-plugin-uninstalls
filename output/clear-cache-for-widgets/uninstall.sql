-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('_ccfm_style_timestamp_theme', 'ccfm_options', '_ccfm_stats', 'ccfm_hosting_notice', 'ccfm_hosting_notice ');
DELETE FROM wp_options WHERE option_name LIKE '_ccfm_style_timestamp_%';

