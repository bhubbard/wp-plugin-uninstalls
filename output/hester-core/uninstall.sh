#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shopwell_builder_enable'
wp option delete 'hester_wpforms_imported_ids'
wp option delete 'wpforms_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'elementor_active_kit'
wp option delete 'dismissed-hester_info_woocommerce'
wp option delete 'fresh_site'

# Delete Transients
wp transient delete 'hester_check_plugin_update'
wp transient delete 'hester_core_demo_templates'
wp transient delete 'wc_attribute_taxonomies'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_mega'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_mega'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_mega'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_mega'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_mega_grid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_mega_grid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_mega_grid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_mega_grid'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_mega_tab'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_mega_tab'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_mega_tab'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_mega_tab'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
