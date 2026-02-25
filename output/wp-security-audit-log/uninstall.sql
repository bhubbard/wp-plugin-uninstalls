-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'wfcm_last-scan-timestamp', '_bbp_default_role', '_bbp_allow_anonymous', '_bbp_edit_lock', '_bbp_throttle_time', ' woocommerce_currency', ' woocommerce_cart_page_id', 'classic-editor-replace', 'classic-editor-allow-users', 'nav_menu_options', 'allowedthemes', 'sidebars_widgets', 'wsal_deactivate_plugins', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE 'woocommerce_%';
DELETE FROM wp_options WHERE option_name LIKE 'widget_%';
DELETE FROM wp_options WHERE option_name LIKE '%_process_lock';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_bbp_forum_type', '_bbp_sticky_topics', '_bbp_status', '_product_attributes', '_stock', '_stock_status', 'wp_2fa_enabled_methods', '_application_passwords');
DELETE FROM wp_usermeta WHERE meta_key IN ('_bbp_forum_type', '_bbp_sticky_topics', '_bbp_status', '_product_attributes', '_stock', '_stock_status', 'wp_2fa_enabled_methods', '_application_passwords');
DELETE FROM wp_termmeta WHERE meta_key IN ('_bbp_forum_type', '_bbp_sticky_topics', '_bbp_status', '_product_attributes', '_stock', '_stock_status', 'wp_2fa_enabled_methods', '_application_passwords');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_bbp_forum_type', '_bbp_sticky_topics', '_bbp_status', '_product_attributes', '_stock', '_stock_status', 'wp_2fa_enabled_methods', '_application_passwords');

