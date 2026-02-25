#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'accp_plugin_activation'
wp option delete 'accp_rewrite_flush_needed_after_settings_change'
wp option delete 'accp_review_notice_dismissed'
wp option delete 'accp_plugin_activation_time'
wp option delete 'accp_review_notice_last_shown'
wp option delete 'accp_company_add_to_main_menu'
wp option delete 'accp_company_status_repeater'
wp option delete 'accp_plugin_option_list'
wp option delete 'arscp_license_key'
wp option delete 'accp_notices_and_errors'

# Clear Cron Jobs
wp cron event delete 'accp_automated_email_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accp_dir'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accp_dir'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accp_dir'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accp_dir'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accp_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accp_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accp_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accp_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accp_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accp_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accp_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accp_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_additional_company'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_additional_company'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_additional_company'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_additional_company'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accp_make_page_global'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accp_make_page_global'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accp_make_page_global'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accp_make_page_global'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accp_company_primary_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accp_company_primary_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accp_company_primary_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accp_company_primary_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accp_home_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accp_home_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accp_home_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accp_home_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accp_company_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accp_company_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accp_company_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accp_company_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'accp_duplicate_dir_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'accp_duplicate_dir_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'accp_duplicate_dir_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'accp_duplicate_dir_notice'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'client_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'client_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'client_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'client_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'file_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'file_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'file_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'file_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_status'"
