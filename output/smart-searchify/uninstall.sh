#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jbid_ss_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jbid_ssearchify_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jbid_ssearchify_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jbid_ssearchify_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jbid_ssearchify_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jbid_ssearchify_sc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jbid_ssearchify_sc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jbid_ssearchify_sc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jbid_ssearchify_sc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jbid_ssearchify_atts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jbid_ssearchify_atts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jbid_ssearchify_atts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jbid_ssearchify_atts'"
