#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'efp_run_days'
wp option delete 'efp_run_after_time'
wp option delete 'efp_run_after_ms'
wp option delete 'efp_run_after_scrolling'
wp option delete 'efp_run_after_scroll_percent'
wp option delete 'efp_modal_header'
wp option delete 'efp_modal_content'
wp option delete 'efp_modal_facebook_link'
wp option delete 'efp_modal_twitter_link'
wp option delete 'efp_modal_instagram_link'
wp option delete 'efp_modal_linkedin_link'
wp option delete 'efp_modal_youtube_link'
wp option delete 'efp_modal_snapchat_link'
wp option delete 'efp_modal_footer'

