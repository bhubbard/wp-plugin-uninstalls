#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lct_duplicator_version'
wp option delete 'lct_duplicator_show_row'
wp option delete 'lct_duplicator_show_submitbox'
wp option delete 'lct_duplicator_show_original_column'
wp option delete 'lct_duplicator_show_original_in_post_states'
wp option delete 'lct_duplicator_show_original_meta_box'
wp option delete 'lct_duplicator_roles'
wp option delete 'lct_duplicator_types_enabled'
wp option delete 'lct_duplicator_copychildren'
wp option delete 'lct_duplicator_copyattachments'
wp option delete 'lct_duplicator_copycomments'
wp option delete 'lct_duplicator_copy_user_level'
wp option delete 'lct_duplicator_copytitle'
wp option delete 'lct_duplicator_copydate'
wp option delete 'lct_duplicator_copystatus'
wp option delete 'lct_duplicator_copyslug'
wp option delete 'lct_duplicator_copyexcerpt'
wp option delete 'lct_duplicator_copycontent'
wp option delete 'lct_duplicator_copythumbnail'
wp option delete 'lct_duplicator_copytemplate'
wp option delete 'lct_duplicator_copyformat'
wp option delete 'lct_duplicator_copyauthor'
wp option delete 'lct_duplicator_copypassword'
wp option delete 'lct_duplicator_copymenuorder'
wp option delete 'lct_duplicator_taxonomies_blacklist'
wp option delete 'lct_duplicator_blacklist'
wp option delete 'lct_duplicator_show_adminbar'
wp option delete 'lct_duplicator_show_bulkactions'
wp option delete 'lct_duplicator_admin_user_level'
wp option delete 'lct_duplicator_create_user_level'
wp option delete 'lct_duplicator_view_user_level'
wp option delete 'dp_notice'
wp option delete 'lct_duplicator_title_prefix'
wp option delete 'lct_duplicator_title_suffix'
wp option delete 'lct_duplicator_increase_menu_order_by'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_lct_copy_from_url-original_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_lct_copy_from_url-original_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_lct_copy_from_url-original_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_lct_copy_from_url-original_file'"
