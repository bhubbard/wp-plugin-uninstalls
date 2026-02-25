#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_first_activate_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_install_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_settings'"
wp option delete 'active_sitewide_plugins'
wp option delete 'nsa_wpfbp_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_meta_keys' OR option_name LIKE '_site_transient_%_meta_keys'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%event'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%event'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%event'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%event_values'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%event_values'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%event_values'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%event_values'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
