-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('easyv_google', 'easyv_yahoo', 'easyv_bing');

