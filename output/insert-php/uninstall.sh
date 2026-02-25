#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'winp_pending_error_notices'
wp option delete 'winp_dismissed_notices'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_logger_flag'"
wp option delete 'wbcr_inp_code_editor_theme'
wp option delete 'wbcr_inp_code_editor_indent_with_tabs'
wp option delete 'wbcr_inp_code_editor_tab_size'
wp option delete 'wbcr_inp_code_editor_indent_size'
wp option delete 'wbcr_inp_code_editor_line_numbers'
wp option delete 'wbcr_inp_code_editor_wrap_lines'
wp option delete 'wbcr_inp_code_editor_auto_close_brackets'
wp option delete 'wbcr_inp_code_editor_highlight_selection_matches'
wp option delete 'wbcr_inp_keep_html_entities'
wp option delete 'wbcr_inp_activate_by_default'
wp option delete 'wbcr_inp_execute_shortcode'
wp option delete 'wbcr_inp_error_email_enabled'
wp option delete 'wbcr_inp_error_email_address'
wp option delete 'wbcr_inp_complete_uninstall'
wp option delete 'wbcr_inp_code_editor_indent_unit'
wp option delete 'winp_emailed_errors'
wp option delete 'wbcr_inp_demo_snippets_created'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wbcr_inp_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_status'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license_plan'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_failed_checks'"
wp option delete 'themeisle_sdk_notifications'
wp option delete 'otter_reference_key'
wp option delete 'optimole_reference_key'
wp option delete 'rop_reference_key'
wp option delete 'neve_reference_key'
wp option delete 'hyve_reference_key'
wp option delete 'wp_full_pay_reference_key'
wp option delete 'feedzy_reference_key'
wp option delete 'themeisle_sdk_promotions_otter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"

# Delete Transients
wp transient delete 'winp_premium_version_incompatible'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_plugin_info_%' OR option_name LIKE '_site_transient_ti_plugin_info_%'"
wp transient delete 'themeisle_sdk_cache_token'
wp transient delete 'themeisle_sdk_feed_items'
wp transient delete 'themeisle_sdk_products'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%act_err' OR option_name LIKE '_site_transient_%act_err'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_license_data' OR option_name LIKE '_site_transient_%_license_data'"
wp transient delete 'tsk_attachment_count'
wp transient delete 'tsk_posts_count'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_theme_info_%' OR option_name LIKE '_site_transient_ti_theme_info_%'"
wp transient delete 'update_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_warning_rollback' OR option_name LIKE '_site_transient_%_warning_rollback'"
wp transient delete 'update_themes'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ti_sdk_pause_%' OR option_name LIKE '_site_transient_ti_sdk_pause_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_changed_filters'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_changed_filters'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_changed_filters'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_changed_filters'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_scope'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_scope'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_scope'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_scope'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_priority'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_priority'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_priority'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_priority'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_activate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_activate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_activate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_activate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'wbcr_inp_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'wbcr_inp_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'wbcr_inp_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'wbcr_inp_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_check_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_check_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_check_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_check_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_current_snippets'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_current_snippets'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_current_snippets'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_current_snippets'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_draft'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_draft'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_draft'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_draft'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_custom_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_custom_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_custom_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_custom_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_p_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_p_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_p_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_p_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_linking'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_linking'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_linking'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_linking'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wbcr_inp_snippet_wpml_lang'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wbcr_inp_snippet_wpml_lang'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wbcr_inp_snippet_wpml_lang'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wbcr_inp_snippet_wpml_lang'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'themeisle_sdk_dismissed_notice_black_friday'"
