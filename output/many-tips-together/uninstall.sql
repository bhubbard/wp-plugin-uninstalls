-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wp_attachment_pages_enabled', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'redux-framework_extendify_plugin_notice', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'redux_custom_font_current', 'woocommerce_shop_page_id', 'auto_update_redux_google_fonts');
DELETE FROM wp_options WHERE option_name LIKE '%ense_key';
DELETE FROM wp_options WHERE option_name LIKE '%icense_status';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%_color_scheme';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-metaboxes';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-taxonomy';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-users';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_metadata', 'ignore_hints', '_wp_page_template', '_visibility', '_stock_status');
DELETE FROM wp_usermeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_metadata', 'ignore_hints', '_wp_page_template', '_visibility', '_stock_status');
DELETE FROM wp_termmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_metadata', 'ignore_hints', '_wp_page_template', '_visibility', '_stock_status');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_thumbnail_id', '_wp_attachment_metadata', 'ignore_hints', '_wp_page_template', '_visibility', '_stock_status');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';

