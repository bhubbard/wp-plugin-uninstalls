-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('php_on_pages_version', 'php_on_pages_enabled_post_types', 'php_on_pages_wc_shop', 'php_on_pages_wc_cart', 'php_on_pages_wc_checkout', 'php_on_pages_remove_trailing_slash');

