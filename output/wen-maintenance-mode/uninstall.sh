#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmm_enabled'
wp option delete 'wmm_template'
wp option delete 'wmm_logo'
wp option delete 'wmm_background_option'
wp option delete 'wmm_background_image'
wp option delete 'wmm_background_color'
wp option delete 'wmm_disable_on'
wp option delete 'wmm_content_heading'
wp option delete 'wmm_content'
wp option delete 'wmm_content_border'
wp option delete 'wmm_border_color'
wp option delete 'wmm_content_color'
wp option delete 'wmm_facebook_link'
wp option delete 'wmm_twitter_link'
wp option delete 'wmm_linkedin_link'
wp option delete 'wmm_instagram_link'
wp option delete 'wmm_youtube_link'
wp option delete 'wmm_email_link'
wp option delete 'wmm_phone_number'
wp option delete 'wmm_icon_color'
wp option delete 'wmm_page_title'
wp option delete 'wmm_favicon'
wp option delete 'wmm_enable_gtracking'
wp option delete 'wmm_ga_tracking_id'
wp option delete 'wmm_background_video'

# Clear Cron Jobs
wp cron event delete 'wmm_check_disable_maintenance'

