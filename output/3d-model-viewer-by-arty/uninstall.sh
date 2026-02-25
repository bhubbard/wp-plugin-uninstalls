#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'arty_3dmodelviewer_woocommerce_api'
wp option delete 'arty_3dmodelviewer_woocommerce_default_position'
wp option delete 'arty_3dmodelviewer_woocommerce_default_values'
wp option delete 'arty_3dmodelviewer_activation_redirect'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'arty_viewer_iframe'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'arty_viewer_iframe'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'arty_viewer_iframe'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'arty_viewer_iframe'"
