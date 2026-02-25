-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('default_post_edit_rows', 'woo-popup_options', 'woocommerce_shop_page_id');

