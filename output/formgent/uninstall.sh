#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'formgent_ai_created_form'
wp option delete '_formgent_zohocrm_settings'
wp option delete 'formgent_lock_queue'
wp option delete 'formgent_lock_spreadsheet_header_process'
wp option delete 'formgent_activation_redirect'
wp option delete 'formgent_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formgent_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formgent_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formgent_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formgent_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_response_table_names'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_response_table_names'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_response_table_names'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_response_table_names'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'formgent_form_fields_labels'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'formgent_form_fields_labels'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'formgent_form_fields_labels'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'formgent_form_fields_labels'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formgent_fields'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formgent_fields'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formgent_fields'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formgent_fields'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formgent_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formgent_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formgent_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formgent_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formgent_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formgent_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formgent_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formgent_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_formgent_page_break_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_formgent_page_break_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_formgent_page_break_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_formgent_page_break_settings'"
