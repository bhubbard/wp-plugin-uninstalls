#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sidebars_widgets'
wp option delete 'formzu_option_data'
wp option delete 'widget_formzudefaultwidget'

# Delete Transients
wp transient delete 'formzu-admin-errors'
wp transient delete 'formzu-admin-updated'
wp transient delete 'formzu-admin-error'
wp transient delete 'formzu-admin-html'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'closedpostboxes_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'closedpostboxes_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'closedpostboxes_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'closedpostboxes_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'meta-box-order_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'meta-box-order_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'meta-box-order_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'meta-box-order_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object'"
