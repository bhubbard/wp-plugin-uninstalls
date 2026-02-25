#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'netgo_facebook_app_id'
wp option delete 'netgo_facebook_secret_key'
wp option delete 'netgo_facebook_page_id'
wp option delete 'netgo_ins_user_id'
wp option delete 'netgo_ins_access_token'
wp option delete 'netgo_pi_user_name'
wp option delete 'netgo_access_token'
wp option delete 'netgo_access_token_secret'
wp option delete 'netgo_consumer_key'
wp option delete 'netgo_consumer_secret'
wp option delete 'netgo_screen_name'
wp option delete 'netgo_youtube_video_url'
wp option delete 'netgo_facebook_enable_jquery'
wp option delete 'netgo_fb_enable'
wp option delete 'netgo_tw_enable'
wp option delete 'netgo_ins_enable'
wp option delete 'netgo_pi_enable'
wp option delete 'netgo_yt_enable'
wp option delete 'netgo_box_h'
wp option delete 'netgo_feeds'
wp option delete 'netgo_jquery_include'

