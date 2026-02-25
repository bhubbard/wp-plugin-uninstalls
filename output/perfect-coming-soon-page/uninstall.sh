#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'title_main_heading'
wp option delete 'pcsp_bg_image_url'
wp option delete 'description_content_block'
wp option delete 'google_plus_url'
wp option delete 'facebook_page_url'
wp option delete 'twitter_handle_url'

