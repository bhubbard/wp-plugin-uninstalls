-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('simpletoc_wrapper_enabled', 'simpletoc_accordion_enabled', 'simpletoc_absolute_urls_enabled', 'simpletoc_smooth_enabled', 'simpletoc_autoupdate_enabled');

