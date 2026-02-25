-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('2checkout_version', '2checkout_install_time', 'codexpert-blog-json', '_site_transient_update_plugins', 'update_plugins');

