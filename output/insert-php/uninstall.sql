-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('winp_pending_error_notices', 'winp_dismissed_notices', 'wbcr_inp_code_editor_theme', 'wbcr_inp_code_editor_indent_with_tabs', 'wbcr_inp_code_editor_tab_size', 'wbcr_inp_code_editor_indent_size', 'wbcr_inp_code_editor_line_numbers', 'wbcr_inp_code_editor_wrap_lines', 'wbcr_inp_code_editor_auto_close_brackets', 'wbcr_inp_code_editor_highlight_selection_matches', 'wbcr_inp_keep_html_entities', 'wbcr_inp_activate_by_default', 'wbcr_inp_execute_shortcode', 'wbcr_inp_error_email_enabled', 'wbcr_inp_error_email_address', 'wbcr_inp_complete_uninstall', 'wbcr_inp_code_editor_indent_unit', 'winp_emailed_errors', 'wbcr_inp_demo_snippets_created', 'themeisle_sdk_notifications', 'otter_reference_key', 'optimole_reference_key', 'rop_reference_key', 'neve_reference_key', 'hyve_reference_key', 'wp_full_pay_reference_key', 'feedzy_reference_key', 'themeisle_sdk_promotions_otter', 'winp_premium_version_incompatible', 'themeisle_sdk_cache_token', 'themeisle_sdk_feed_items', 'themeisle_sdk_products', 'tsk_attachment_count', 'tsk_posts_count', 'update_plugins', 'update_themes');
DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE '%_install';
DELETE FROM wp_options WHERE option_name LIKE 'wbcr_inp_%';
DELETE FROM wp_options WHERE option_name LIKE '%_license_status';
DELETE FROM wp_options WHERE option_name LIKE '%_license_plan';
DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks';
DELETE FROM wp_options WHERE option_name LIKE '%_version';
DELETE FROM wp_options WHERE option_name LIKE '%_license';
DELETE FROM wp_options WHERE option_name LIKE 'ti_plugin_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%act_err';
DELETE FROM wp_options WHERE option_name LIKE '%_license_data';
DELETE FROM wp_options WHERE option_name LIKE 'ti_theme_info_%';
DELETE FROM wp_options WHERE option_name LIKE '%_warning_rollback';
DELETE FROM wp_options WHERE option_name LIKE 'ti_sdk_pause_%';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('wbcr_inp_snippet_location', 'wbcr_inp_snippet_type', 'wbcr_inp_snippet_filters', 'wbcr_inp_changed_filters', 'wbcr_inp_snippet_scope', 'wbcr_inp_snippet_priority', 'wbcr_inp_snippet_description', 'wbcr_inp_snippet_tags', 'wbcr_inp_snippet_activate', 'wbcr_inp_snippet_check_data', 'wbcr_inp_current_snippets', 'wbcr_inp_snippet_draft', 'wbcr_inp_snippet_custom_name', 'wbcr_inp_snippet_p_number', 'wbcr_inp_snippet_linking', 'wbcr_inp_snippet_wpml_lang', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_usermeta WHERE meta_key IN ('wbcr_inp_snippet_location', 'wbcr_inp_snippet_type', 'wbcr_inp_snippet_filters', 'wbcr_inp_changed_filters', 'wbcr_inp_snippet_scope', 'wbcr_inp_snippet_priority', 'wbcr_inp_snippet_description', 'wbcr_inp_snippet_tags', 'wbcr_inp_snippet_activate', 'wbcr_inp_snippet_check_data', 'wbcr_inp_current_snippets', 'wbcr_inp_snippet_draft', 'wbcr_inp_snippet_custom_name', 'wbcr_inp_snippet_p_number', 'wbcr_inp_snippet_linking', 'wbcr_inp_snippet_wpml_lang', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_termmeta WHERE meta_key IN ('wbcr_inp_snippet_location', 'wbcr_inp_snippet_type', 'wbcr_inp_snippet_filters', 'wbcr_inp_changed_filters', 'wbcr_inp_snippet_scope', 'wbcr_inp_snippet_priority', 'wbcr_inp_snippet_description', 'wbcr_inp_snippet_tags', 'wbcr_inp_snippet_activate', 'wbcr_inp_snippet_check_data', 'wbcr_inp_current_snippets', 'wbcr_inp_snippet_draft', 'wbcr_inp_snippet_custom_name', 'wbcr_inp_snippet_p_number', 'wbcr_inp_snippet_linking', 'wbcr_inp_snippet_wpml_lang', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_commentmeta WHERE meta_key IN ('wbcr_inp_snippet_location', 'wbcr_inp_snippet_type', 'wbcr_inp_snippet_filters', 'wbcr_inp_changed_filters', 'wbcr_inp_snippet_scope', 'wbcr_inp_snippet_priority', 'wbcr_inp_snippet_description', 'wbcr_inp_snippet_tags', 'wbcr_inp_snippet_activate', 'wbcr_inp_snippet_check_data', 'wbcr_inp_current_snippets', 'wbcr_inp_snippet_draft', 'wbcr_inp_snippet_custom_name', 'wbcr_inp_snippet_p_number', 'wbcr_inp_snippet_linking', 'wbcr_inp_snippet_wpml_lang', 'themeisle_sdk_dismissed_notice_black_friday');
DELETE FROM wp_postmeta WHERE meta_key LIKE 'wbcr_inp_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE 'wbcr_inp_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE 'wbcr_inp_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wbcr_inp_%';

