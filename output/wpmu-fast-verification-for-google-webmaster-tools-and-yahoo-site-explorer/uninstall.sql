-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmufastver_google', 'wpmufastver_yahoo', 'wpmufastver_bing', 'wpmufastver_alexa');

