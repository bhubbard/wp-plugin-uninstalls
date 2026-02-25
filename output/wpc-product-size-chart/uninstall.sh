#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcsc_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpcsc_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpcsc_chart_%' OR option_name LIKE '_site_transient_wpcsc_chart_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wpcsc_charts_%' OR option_name LIKE '_site_transient_wpcsc_charts_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'combined'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'combined'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'combined'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'combined'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'above_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'above_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'above_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'above_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'under_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'under_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'under_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'under_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'table_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'table_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'table_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'table_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcsc_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcsc_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcsc_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcsc_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcsc_size_charts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcsc_size_charts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcsc_size_charts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcsc_size_charts'"
