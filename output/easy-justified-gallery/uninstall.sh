#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'carbon_custom_sidebars'
wp option delete 'webtangl_ejg_options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
