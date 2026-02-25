#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'de_text_validation'
wp option delete 'de_menu_editor_enabled'
wp option delete 'de_edit_menu_page'
wp option delete 'de_menu_editor_pages'
wp option delete 'de_menu_editor_de_archive_pages'
wp option delete 'de_menu_editor_de_webforms'
wp option delete 'de_menu_editor_categories'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'de_menu_editor_taxonomies_%'"
wp option delete 'de_menu_editor_posts'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'de_menu_editor_posts_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'de_page_for_%'"
wp option delete 'de_smart_urls'
wp option delete 'de_wp_login_redirect'
wp option delete 'de_login_form'
wp option delete 'automatic_updates_key'
wp option delete 'de_options_wp_hooks'
wp option delete 'de_options_custom_page_types'

# Clear Cron Jobs
wp cron event delete 'de_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'de_new_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'de_new_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'de_new_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'de_new_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'de_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'de_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'de_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'de_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'de_title_not_translated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'de_title_not_translated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'de_title_not_translated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'de_title_not_translated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'de_post_parent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'de_post_parent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'de_post_parent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'de_post_parent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'de_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'de_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'de_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'de_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'de_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'de_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'de_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'de_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'de_navigation_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'de_navigation_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'de_navigation_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'de_navigation_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'de_wp_hooks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'de_wp_hooks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'de_wp_hooks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'de_wp_hooks'"
