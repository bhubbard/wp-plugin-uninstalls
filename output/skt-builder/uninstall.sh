#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sktbuilder_version'
wp option delete 'sktbuilder_libraries'
wp option delete 'sktbuilder_page_templates'
wp option delete 'sktbuilder_libs'

# Delete Transients
wp transient delete 'sktbuilder_action'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sktbuilder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sktbuilder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sktbuilder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sktbuilder_data'"
