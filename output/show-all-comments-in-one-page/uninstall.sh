#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bt_post_type'
wp option delete 'bt_pagination'
wp option delete 'bt_comments_per_page'
wp option delete 'bt_exclude_post'
wp option delete 'biztech_sac_avatar'
wp option delete 'biztech_show_date'
wp option delete 'biztech_open_new_tab'
wp option delete 'biztech_comments_order'
wp option delete 'bt_display_filter'
wp option delete 'bt_show_post_link'
wp option delete 'bt_show_comment_link'

