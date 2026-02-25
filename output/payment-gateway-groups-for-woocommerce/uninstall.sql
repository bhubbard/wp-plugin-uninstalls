-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('fs_debug_mode', 'active_sitewide_plugins', 'fs_active_plugins', 'fs_storage_logger', 'woopgg_display', 'woopgg_html_tag', 'woopgg_active_color', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE 'woopgg_payment_group_%';
DELETE FROM wp_options WHERE option_name LIKE 'woopgg_checkout_payment_gateway_%';

