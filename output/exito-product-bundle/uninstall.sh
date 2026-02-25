#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'exito_addon_position'
wp option delete 'exito_bundle_button_label'
wp option delete 'exito_hide_in_sticky'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_exito_addon_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_exito_addon_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_exito_addon_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_exito_addon_product_id'"
