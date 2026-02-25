#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'new_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_doc_icon_new_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_doc_icon_new_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_doc_icon_new_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_doc_icon_new_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_kb_icon_new_class'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_kb_icon_new_class'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_kb_icon_new_class'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_kb_icon_new_class'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_element_grid_class_meta_box_kb_desc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_element_grid_class_meta_box_kb_desc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_element_grid_class_meta_box_kb_desc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_element_grid_class_meta_box_kb_desc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbs_rating_up'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbs_rating_up'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbs_rating_up'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbs_rating_up'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbs_rating_down'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbs_rating_down'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbs_rating_down'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbs_rating_down'"
