#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fusion_retailers_imported'
wp option delete 'fusion_states_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fusion_states'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fusion_states'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fusion_states'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fusion_states'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fusion_retailer_website'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fusion_retailer_website'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fusion_retailer_website'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fusion_retailer_website'"
