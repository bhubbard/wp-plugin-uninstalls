#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'apaui_enable'
wp option delete 'apaui_mode'
wp option delete 'apaui_is_virtual'
wp option delete 'apaui_is_downloadable'
wp option delete 'apaui_tax'
wp option delete 'apaui_updatepost'

# Delete Transients
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'order'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'order'"
