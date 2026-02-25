#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'stf_version'
wp option delete 'stf_previous_version'
wp option delete 'scripts-to-footer'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'stf_exclude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'stf_exclude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'stf_exclude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'stf_exclude'"
