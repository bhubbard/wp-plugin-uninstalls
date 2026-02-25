#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'boorecipe-options'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'boorecipe_%'"
wp option delete 'boorecipe_recipe_default_img_url'
wp option delete 'boorecipe_search_form_filters'
wp option delete 'boorecipe_uninstall_delete_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'boorecipe_recipe_image_slider_items_attached'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'boorecipe_recipe_image_slider_items_attached'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'boorecipe_recipe_image_slider_items_attached'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'boorecipe_recipe_image_slider_items_attached'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%recipe_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%recipe_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%recipe_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%recipe_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_dismiss_news'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_dismiss_news'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_dismiss_news'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_dismiss_news'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
