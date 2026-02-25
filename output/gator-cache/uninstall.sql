-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('sidebars_widgets', 'jetpack_active_modules', 'wp_mobile_disable', 'wordpress-https_ssl_host');

