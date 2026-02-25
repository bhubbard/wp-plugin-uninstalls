#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aiccfb_facebook_settings'
wp option delete 'ai_content_facebook_settings'
wp option delete 'facebook_page_id'

# Clear Cron Jobs
wp cron event delete 'ai_content_facebook_generate_and_post'

