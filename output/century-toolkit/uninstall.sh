#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'century_toolkit_plugin_do_activation_redirect'
wp option delete 'century_toolkit_version'
wp option delete 'century_toolkit_file_download_method'
wp option delete 'century_toolkit_upload_dir_created'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'widget_%'"
wp option delete 'sidebars_widgets'
wp option delete 'elementor_disable_color_schemes'
wp option delete 'elementor_disable_typography_schemes'
wp option delete 'elementor_container_width'

# Delete Transients
wp transient delete 'century_toolkit_installing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_menu_item_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menu_item_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
