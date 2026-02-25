#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xeweb-sam_admin_see_all_pages'
wp option delete 'xeweb-sam_redirect_page'
wp option delete 'xeweb-sam_shortcode_all_pages'
wp option delete 'xeweb-sam_message_no_posts'
wp option delete 'xeweb-sam_post_limit_widget'
wp option delete 'xeweb-sam_list_posts_text'
wp option delete 'xeweb-sam_allowed_post_types'
wp option delete 'xeweb-sam_admin_remove_empty_cats'
wp option delete 'xeweb-sam_auto_menu_remove'
wp option delete 'xeweb-sam_list_posts_link'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'txsc_allowed_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'txsc_allowed_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'txsc_allowed_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'txsc_allowed_users'"
