-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('active_sitewide_plugins', 'ReduxFrameworkPlugin', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'redux-framework_extendify_plugin_notice', 'redux_custom_font_current', 'woocommerce_shop_page_id', 'auto_update_redux_google_fonts', 'redux_pro_license_status', 'themeisle_blocks_settings_default_block', 'redux_pro_license_key', '__uagb_do_redirect', '_redux_content_width', 'splite_review_notice', 'splite_install_date', 'splite_grant_access_time', 'splite_last_import', 'recently_activated', 'splite_delete_data', 'cf7_id', 'form_title', 'primary_color', 'border_color', 'form_description', 'side_image', 'splite_opts', 'update_plugins', 'splite_updated', 'splite_activated');
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%ense_key';
DELETE FROM wp_options WHERE option_name LIKE '%icense_status';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-metaboxes';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-users';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('tgmpa_dismissed_notice_myarcadetheme', 'ignore_hints', '_visibility', '_stock_status', '_redux_templates_counts', '_redux_welcome_guide', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('tgmpa_dismissed_notice_myarcadetheme', 'ignore_hints', '_visibility', '_stock_status', '_redux_templates_counts', '_redux_welcome_guide', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('tgmpa_dismissed_notice_myarcadetheme', 'ignore_hints', '_visibility', '_stock_status', '_redux_templates_counts', '_redux_welcome_guide', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('tgmpa_dismissed_notice_myarcadetheme', 'ignore_hints', '_visibility', '_stock_status', '_redux_templates_counts', '_redux_welcome_guide', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%';

