-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_quick_view_settings', '_product_quick_view_for_woocommerce_welcome_screen_activation_redirect');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_checkbox');
DELETE FROM wp_usermeta WHERE meta_key IN ('_checkbox');
DELETE FROM wp_termmeta WHERE meta_key IN ('_checkbox');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_checkbox');

