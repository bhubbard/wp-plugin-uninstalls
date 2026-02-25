-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ReduxFrameworkPlugin', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'redux-framework_extendify_plugin_notice', 'redux_custom_font_current', 'woocommerce_shop_page_id', 'auto_update_redux_google_fonts', '_redux_content_width', 'omfe_opts', 'omfe_install_date', 'omfe_review_notice', 'update_plugins', 'omfe_activated', 'omfe_updated');
DELETE FROM wp_options WHERE option_name LIKE '%ense_key';
DELETE FROM wp_options WHERE option_name LIKE '%icense_status';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-metaboxes';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-users';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tgmpa_dismissed_notice_myarcadetheme', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('tgmpa_dismissed_notice_myarcadetheme', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('tgmpa_dismissed_notice_myarcadetheme', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tgmpa_dismissed_notice_myarcadetheme', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';

