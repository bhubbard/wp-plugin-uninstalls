-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('wpswisstoolkitpro_license_options', 'max_file_size', 'active_sitewide_plugins', 'ReduxFrameworkPlugin', 'ReduxFrameworkPlugin_ACTIVATED_NOTICES', 'redux-framework_extendify_plugin_notice', 'redux_custom_font_current', 'woocommerce_shop_page_id', 'auto_update_redux_google_fonts', '_redux_content_width', 'update_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%ense_key';
DELETE FROM wp_options WHERE option_name LIKE '%icense_status';
DELETE FROM wp_options WHERE option_name LIKE '%-transients';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped';
DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking';
DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice';
DELETE FROM wp_options WHERE option_name LIKE '%-transient';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-metaboxes';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-taxonomy';
DELETE FROM wp_options WHERE option_name LIKE '%-transients-users';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('bdstfw_code_snippets_language', 'bdstfw_code_snippets_textarea', 'bdstfw_code_snippets_location', 'bdstfw_code_snippets_toggle', '_bdstfw_encrypted_token', '_bdstfw_swiss_expiration_time', '_bdstfw_swiss_usage_count', 'bdstfw_swiss_usage_limitation', '_bdstfw_current_login_userId', 'boomdevs_swiss_avatar_uploader_image', '_swiss_usage_limitation', '_swiss_usage_custom_limitation', '_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_usermeta WHERE meta_key IN ('bdstfw_code_snippets_language', 'bdstfw_code_snippets_textarea', 'bdstfw_code_snippets_location', 'bdstfw_code_snippets_toggle', '_bdstfw_encrypted_token', '_bdstfw_swiss_expiration_time', '_bdstfw_swiss_usage_count', 'bdstfw_swiss_usage_limitation', '_bdstfw_current_login_userId', 'boomdevs_swiss_avatar_uploader_image', '_swiss_usage_limitation', '_swiss_usage_custom_limitation', '_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_termmeta WHERE meta_key IN ('bdstfw_code_snippets_language', 'bdstfw_code_snippets_textarea', 'bdstfw_code_snippets_location', 'bdstfw_code_snippets_toggle', '_bdstfw_encrypted_token', '_bdstfw_swiss_expiration_time', '_bdstfw_swiss_usage_count', 'bdstfw_swiss_usage_limitation', '_bdstfw_current_login_userId', 'boomdevs_swiss_avatar_uploader_image', '_swiss_usage_limitation', '_swiss_usage_custom_limitation', '_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_commentmeta WHERE meta_key IN ('bdstfw_code_snippets_language', 'bdstfw_code_snippets_textarea', 'bdstfw_code_snippets_location', 'bdstfw_code_snippets_toggle', '_bdstfw_encrypted_token', '_bdstfw_swiss_expiration_time', '_bdstfw_swiss_usage_count', 'bdstfw_swiss_usage_limitation', '_bdstfw_current_login_userId', 'boomdevs_swiss_avatar_uploader_image', '_swiss_usage_limitation', '_swiss_usage_custom_limitation', '_wp_attachment_is_custom_background', '_wp_attachment_is_custom_header', 'ignore_hints', '_visibility', '_stock_status', '_wp_page_template');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'ignore_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'ignore_%';

