#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'edacp_license_status'
wp option delete 'edac_black_friday_2025_notice_dismiss'
wp option delete 'edac_black_friday_2024_notice_dismiss'
wp option delete 'edac_black_friday_2023_notice_dismiss'
wp option delete 'edac_gaad_notice_dismiss_2025'
wp option delete 'edac_gaad_notice_dismiss_2024'
wp option delete 'edac_gaad_notice_dismiss'
wp option delete 'edac_review_notice'
wp option delete 'edac_simplified_summary_prompt'
wp option delete 'edac_simplified_summary_position'
wp option delete 'edacp_fullscan_completed_at'
wp option delete 'edac_db_version'
wp option delete 'edacah_enable_show_history_button'
wp option delete 'edac_accessibility_policy_page'
wp option delete 'edac_activation_date'
wp option delete 'edac_add_footer_accessibility_statement'
wp option delete 'edac_delete_data'
wp option delete 'edac_include_accessibility_statement_link'
wp option delete 'edac_post_types'
wp option delete 'edacp_simplified_summary_heading'
wp option delete 'edacp_ignore_user_roles'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'edac_fix_%'"
wp option delete 'edac_fix_comment_label'
wp option delete 'edac_fix_search_label'
wp option delete 'edac_fix_focus_outline'
wp option delete 'edac_fix_add_lang_and_dir'
wp option delete 'edac_fix_force_link_underline'
wp option delete 'edac_fix_add_read_more_title'
wp option delete 'edac_fix_add_read_more_title_screen_reader_only'
wp option delete 'edac_fix_add_skip_link'
wp option delete 'edac_fix_add_skip_link_target_id'
wp option delete 'edac_fix_add_skip_link_nav_target_id'
wp option delete 'edac_fix_remove_tabindex'
wp option delete 'edac_frontend_highlighter_position'
wp option delete 'edacp_full_site_scan_speed'
wp option delete 'edacp_enable_archive_scanning'
wp option delete 'edacp_scan_all_taxonomy_terms'

# Delete Transients
wp transient delete 'edac_activation_redirect'
wp transient delete 'edac_review_notice_reminder'
wp transient delete 'edac_fixes_settings_saved'
wp transient delete 'edacp_scan_id'
wp transient delete 'edacp_scan_total'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edac_simplified_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edac_simplified_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edac_simplified_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edac_simplified_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edac_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edac_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edac_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edac_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edac_welcome_cta_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edac_welcome_cta_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edac_welcome_cta_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edac_welcome_cta_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edac_dashboard_cta_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edac_dashboard_cta_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edac_dashboard_cta_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edac_dashboard_cta_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edac_email_optin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edac_email_optin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edac_email_optin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edac_email_optin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edac_density_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edac_density_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edac_density_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edac_density_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edac_post_checked_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edac_post_checked_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edac_post_checked_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edac_post_checked_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edac_issue_density'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edac_issue_density'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edac_issue_density'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edac_issue_density'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edac_summary_passed_tests'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edac_summary_passed_tests'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edac_summary_passed_tests'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edac_summary_passed_tests'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edac_summary_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edac_summary_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edac_summary_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edac_summary_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edac_summary_warnings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edac_summary_warnings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edac_summary_warnings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edac_summary_warnings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edac_summary_ignored'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edac_summary_ignored'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edac_summary_ignored'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edac_summary_ignored'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_edac_summary_contrast_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_edac_summary_contrast_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_edac_summary_contrast_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_edac_summary_contrast_errors'"
