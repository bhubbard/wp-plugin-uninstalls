#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tmcrevisionmanagersrccomponentslicense_license'
wp option delete 'tmcrevisionmanagersrccomponentslicense_data'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linked_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linked_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linked_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linked_post_id'"
