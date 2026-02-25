-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpmenucart', 'wpmenucart_shop_check', 'active_sitewide_plugins');

