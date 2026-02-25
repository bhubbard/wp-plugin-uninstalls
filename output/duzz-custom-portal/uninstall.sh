#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'duzz_settings_email_settings_field_data'
wp option delete 'duzz_last_saved_email'
wp option delete 'duzz_last_saved_name'
wp option delete 'duzz_last_saved_company_name'
wp option delete 'duzz_has_run_install_process'
wp option delete 'duzz_acf_settings_acf_keys_list_field_data'
wp option delete 'duzz_trashed_messages'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_args'"
wp option delete 'duzz_settings_project_page_field_data'
wp option delete 'recently_activated'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_visibility'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'payment_confirm'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'payment_confirm'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'payment_confirm'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'payment_confirm'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'total_aftertax_sum'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'total_aftertax_sum'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'total_aftertax_sum'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'total_aftertax_sum'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'associated_comment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'associated_comment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'associated_comment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'associated_comment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'comment_post_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'comment_post_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'comment_post_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'comment_post_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'line_items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'line_items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'line_items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'line_items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sales_tax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sales_tax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sales_tax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sales_tax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'invoice_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'invoice_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'invoice_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'invoice_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'tgmpa_dismissed_notice_%'"
