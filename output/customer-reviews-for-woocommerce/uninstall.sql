-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('auto_update_plugins', 'trustindex-core-shortcode-inited', 'woocommerce_email_from_address', 'woocommerce_email_from_name');
DELETE FROM wp_options WHERE option_name LIKE '%-widget-setted-up';

