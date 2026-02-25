#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wprl_download_%' OR option_name LIKE '_site_transient_wprl_download_%'"

# Clear Cron Jobs
wp cron event delete 'wprl_daily_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wprl_file_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wprl_file_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wprl_file_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wprl_file_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wprl_file_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wprl_file_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wprl_file_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wprl_file_type'"
