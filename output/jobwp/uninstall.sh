#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jobwp_cpt_slug'
wp option delete 'jobwp_plugin_settings_have_changed'
wp option delete 'jobwp_single_item_order_list'
wp option delete 'jobwp_apply_form_content'
wp option delete 'jobwp_apply_form_style'
wp option delete 'jobwp_email_settings'
wp option delete 'jobwp_general_settings'
wp option delete 'jobwp_listing_content'
wp option delete 'jobwp_listing_styles'
wp option delete 'jobwp_search_content'
wp option delete 'jobwp_search_styles'
wp option delete 'jobwp_single_content'
wp option delete 'jobwp_single_styles'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'
wp option delete 'jobwp_flush_rewrite_rules_flag'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_experience'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_experience'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_experience'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_experience'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_vacancies'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_vacancies'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_vacancies'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_vacancies'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_nature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_nature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_nature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_nature'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_level'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_location'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_edu_req'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_edu_req'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_edu_req'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_edu_req'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_application_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_application_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_application_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_application_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_is_featured_job'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_is_featured_job'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_is_featured_job'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_is_featured_job'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_responsibilities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_responsibilities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_responsibilities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_responsibilities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_skills'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_skills'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_skills'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_skills'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_add_req'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_add_req'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_add_req'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_add_req'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_salary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_salary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_salary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_salary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jobwp_other_benefits'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jobwp_other_benefits'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jobwp_other_benefits'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jobwp_other_benefits'"
