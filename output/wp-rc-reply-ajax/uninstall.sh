#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rc_reply_show_refresh'
wp option delete 'rc_reply_show_single'
wp option delete 'rc_reply_show_post'
wp option delete 'rc_reply_submit_shortcuts'
wp option delete 'rc_reply_btn_name'
wp option delete 'rc_reply_show_nav'
wp option delete 'rc_reply_comment_number'
wp option delete 'rc_reply_only_admin'
wp option delete 'rc_reply_auto_at'
wp option delete 'rc_reply_btn_list'
wp option delete 'rc_reply_avatar_right'
wp option delete 'rc_reply_show_admin'
wp option delete 'rc_reply_comment_length'
wp option delete 'rc_reply_avatar_size'
wp option delete 'rc_reply_show_avatar'
wp option delete 'rc_reply_files'

