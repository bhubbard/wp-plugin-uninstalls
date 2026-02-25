-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('rt_wp_nginx_helper_options', 'rt_wp_nginx_helper_init_check', 'nginx_helper_version');

