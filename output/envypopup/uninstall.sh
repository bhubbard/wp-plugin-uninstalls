#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'new_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_close_btn_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_custom_btn_size'"
