-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp2baiduzone_user', 'wp2baiduzone_password', 'wp2baiduzone_url', 'wp2baiduzone_blogpower', 'wp2baiduzone_isaddlink', 'wp2baiduzone_issync');

