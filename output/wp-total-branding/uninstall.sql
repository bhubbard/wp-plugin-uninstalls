-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wptb_admin_menu', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux_custom_font_current', 'woocommerce_shop_page_id', 'auto_update_redux_google_fonts');
DELETE FROM wp_options WHERE option_name LIKE '%ense_key';
DELETE FROM wp_options WHERE option_name LIKE '%icense_status';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%_color_scheme';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-metaboxes';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-taxonomy';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-users';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('ignore_hints', '_visibility', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('ignore_hints', '_visibility', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('ignore_hints', '_visibility', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('ignore_hints', '_visibility', '_stock_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';

