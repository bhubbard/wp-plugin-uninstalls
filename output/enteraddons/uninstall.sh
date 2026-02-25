#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'enteraddons_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_last_send'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allow_tracking'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tracking_notice'"
wp option delete 'elementor_load_fa4_shim'
wp option delete 'enteraddons_plugin_lic_Key'

# Clear Cron Jobs

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ea_exclude_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ea_exclude_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ea_exclude_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ea_exclude_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ea_hf_show_onfof'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ea_hf_show_onfof'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ea_hf_show_onfof'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ea_hf_show_onfof'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ea_hf_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ea_hf_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ea_hf_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ea_hf_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ea_hf_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ea_hf_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ea_hf_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ea_hf_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ea_use_on_header'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ea_use_on_header'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ea_use_on_header'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ea_use_on_header'"
