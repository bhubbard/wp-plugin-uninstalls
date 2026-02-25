#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'duplicate_post_version'
wp option delete 'duplicate_post_show_notice'
wp option delete 'duplicate_post_copychildren'
wp option delete 'duplicate_post_copyattachments'
wp option delete 'duplicate_post_copycomments'
wp option delete 'duplicate_post_copytitle'
wp option delete 'duplicate_post_copydate'
wp option delete 'duplicate_post_copystatus'
wp option delete 'duplicate_post_copyslug'
wp option delete 'duplicate_post_copyexcerpt'
wp option delete 'duplicate_post_copycontent'
wp option delete 'duplicate_post_copythumbnail'
wp option delete 'duplicate_post_copytemplate'
wp option delete 'duplicate_post_copyformat'
wp option delete 'duplicate_post_copyauthor'
wp option delete 'duplicate_post_copypassword'
wp option delete 'duplicate_post_copymenuorder'
wp option delete 'duplicate_post_taxonomies_blacklist'
wp option delete 'duplicate_post_blacklist'
wp option delete 'duplicate_post_types_enabled'
wp option delete 'duplicate_post_show_original_column'
wp option delete 'duplicate_post_show_original_in_post_states'
wp option delete 'duplicate_post_show_original_meta_box'
wp option delete 'duplicate_post_show_link'
wp option delete 'duplicate_post_show_link_in'
wp option delete 'duplicate_post_title_prefix'
wp option delete 'duplicate_post_title_suffix'
wp option delete 'duplicate_post_increase_menu_order_by'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dp_original'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dp_original'"
