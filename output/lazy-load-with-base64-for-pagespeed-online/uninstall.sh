#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'base64_data_checkbox'
wp option delete 'base64_include_image_checkbox'
wp option delete 'base64_include_image_content'
wp option delete 'base64_include_og_url_for_image_checkbox'
wp option delete 'base64_include_og_url_for_image_content'
wp option delete 'base64_set_max_file_size_content'
wp option delete 'base64_set_max_file_size_checkbox'
wp option delete 'base64_do_not_include_admin_checkbox'
wp option delete 'lazy_load_data_checkbox'
wp option delete 'lazy_load_exclude_image_checkbox'
wp option delete 'lazy_load_exclude_image_content'
wp option delete 'lazy_load_do_not_include_admin_checkbox'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'base64_include_image_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'base64_include_image_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'base64_include_image_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'base64_include_image_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'base64_include_og_url_for_image_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'base64_include_og_url_for_image_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'base64_include_og_url_for_image_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'base64_include_og_url_for_image_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lazy_load_exclude_image_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lazy_load_exclude_image_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lazy_load_exclude_image_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lazy_load_exclude_image_content'"
