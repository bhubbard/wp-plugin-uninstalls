#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'carbon_copy_version'
wp option delete 'carbon_copy_show_row'
wp option delete 'carbon_copy_show_submitbox'
wp option delete 'carbon_copy_show_original_column'
wp option delete 'carbon_copy_show_original_in_post_states'
wp option delete 'carbon_copy_show_original_meta_box'
wp option delete 'carbon_copy_copychildren'
wp option delete 'carbon_copy_copyattachments'
wp option delete 'carbon_copy_copycomments'
wp option delete 'carbon_copy_copy_user_level'
wp option delete 'carbon_copy_copytitle'
wp option delete 'carbon_copy_copydate'
wp option delete 'carbon_copy_copystatus'
wp option delete 'carbon_copy_copyslug'
wp option delete 'carbon_copy_copyexcerpt'
wp option delete 'carbon_copy_copycontent'
wp option delete 'carbon_copy_copythumbnail'
wp option delete 'carbon_copy_copytemplate'
wp option delete 'carbon_copy_copyformat'
wp option delete 'carbon_copy_copyauthor'
wp option delete 'carbon_copy_copypassword'
wp option delete 'carbon_copy_copymenuorder'
wp option delete 'carbon_copy_widgets_classic'
wp option delete 'carbon_copy_widgets'
wp option delete 'carbon_copy_menus'
wp option delete 'carbon_copy_types_enabled'
wp option delete 'carbon_copy_taxonomies_blacklist'
wp option delete 'carbon_copy_blacklist'
wp option delete 'carbon_copy_show_adminbar'
wp option delete 'carbon_copy_show_bulkactions'
wp option delete 'carbon_copy_cleaner'
wp option delete 'carbon_copy_admin_user_level'
wp option delete 'carbon_copy_create_user_level'
wp option delete 'carbon_copy_view_user_level'
wp option delete 'carbon_copy_title_prefix'
wp option delete 'carbon_copy_title_suffix'
wp option delete 'carbon_copy_increase_menu_order_by'
wp option delete 'carbon_copy_roles'
wp option delete 'carbon_copy_blacklist '

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cc_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cc_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cc_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cc_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
