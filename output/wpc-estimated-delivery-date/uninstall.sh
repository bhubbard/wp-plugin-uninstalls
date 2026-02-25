#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpced_settings'
wp option delete 'wpced_rules'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpced_%'"

# Delete Transients
wp transient delete 'wpclever_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpced_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpced_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpced_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpced_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpced_rules'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpced_rules'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpced_rules'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpced_rules'"
