#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'poi_acf_general_settings'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp option delete 'lou_acf_wc_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'poi_acf_field_data-%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'poi_acf_field_data-%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'poi_acf_field_data-%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'poi_acf_field_data-%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rule'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'poi_page_rule'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'poi_page_rule'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'poi_page_rule'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'poi_page_rule'"
