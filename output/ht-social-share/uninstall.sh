#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_icon_list'
wp option delete 'socail_btn_style'
wp option delete 'button_position'
wp option delete 'social_post_types'
wp option delete 'facebook_app_id'
wp option delete 'youtube_username'
wp option delete 'instagram_username'

