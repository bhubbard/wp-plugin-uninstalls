#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zb_wp_copyright_options'

# Delete Transients
wp transient delete 'zb_wpc_admin_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'copyright'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'copyright'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'copyright'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'copyright'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'released'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'released'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'released'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'released'"
