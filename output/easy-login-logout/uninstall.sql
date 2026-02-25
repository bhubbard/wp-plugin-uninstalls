-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('woocommerce_myaccount_page_id');

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_custom_menu_meta', '_custom_redirect_meta', '_custom_redirect_url');
DELETE FROM wp_usermeta WHERE meta_key IN ('_custom_menu_meta', '_custom_redirect_meta', '_custom_redirect_url');
DELETE FROM wp_termmeta WHERE meta_key IN ('_custom_menu_meta', '_custom_redirect_meta', '_custom_redirect_url');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_custom_menu_meta', '_custom_redirect_meta', '_custom_redirect_url');

