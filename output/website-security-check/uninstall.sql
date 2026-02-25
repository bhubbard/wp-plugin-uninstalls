-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'woocommerce_queue_flush_rewrite_rules', 'wsc_securitycheck', 'wsc_securitycheck_time', 'wsc_securitycheck_ignore', 'wsc_activate', 'wsc_restore', 'update_plugins', 'update_themes');

