#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'attorneyconnect_ai_website_code'
wp option delete 'attorneyconnect_ai_widget_bar_placement'
wp option delete 'attorneyconnect_ai_feature_color'
wp option delete 'attorneyconnect_ai_text_color'
wp option delete 'attorneyconnect_ai_include_title_button'
wp option delete 'attorneyconnect_ai_include_call_button'
wp option delete 'attorneyconnect_ai_include_email_button'
wp option delete 'attorneyconnect_ai_include_chat_button'
wp option delete 'attorneyconnect_ai_show_powered_by'
wp option delete 'attorneyconnect_ai_show_floating_chat_button'
wp option delete 'attorneyconnect_ai_engagement_time'

