#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ht_cf7extensions_diagnostic_data_agreed'
wp option delete 'ht_cf7extensions_diagnostic_data_notice'
wp option delete 'extcf7_delete_data_fetch_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'extcf7_mcmp_%'"
wp option delete 'htcf7ext_conditional_field_module_settings'
wp option delete 'htcf7ext_redirection_extension_module_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer'"
wp option delete 'extcf7_db_table_alter_status'
wp option delete 'htcf7ext_opt'
wp option delete 'htcf7ext_opt_extensions'

# Delete Transients
wp transient delete 'extcf7-notice-id-diagnostic-data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_htiop_data' OR option_name LIKE '_site_transient_%_htiop_data'"
wp transient delete 'extcf7_unread_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extcf7_conditional_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extcf7_conditional_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extcf7_conditional_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extcf7_conditional_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'extcf7_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'extcf7_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'extcf7_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'extcf7_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extcf7_range_slider'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extcf7_range_slider'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extcf7_range_slider'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extcf7_range_slider'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extcf7_redirect_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extcf7_redirect_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extcf7_redirect_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extcf7_redirect_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'extcf7_signature'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'extcf7_signature'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'extcf7_signature'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'extcf7_signature'"
