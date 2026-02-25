#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aad-settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aad_before_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aad_before_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aad_before_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aad_before_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aad_after_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aad_after_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aad_after_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aad_after_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'aad_custom_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'aad_custom_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'aad_custom_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'aad_custom_rules'"
