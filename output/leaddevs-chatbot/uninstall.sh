#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfbmb_feed_fb_messenger_chat_bot_application_credentials'
wp option delete 'wpfbmb_feed_fb_messenger_chat_bot_application_option_setting'
wp option delete 'wpfbmb_fb_messenger_pages_settings'

