#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autocontent_activation_status'
wp option delete 'autocontent_activation_key'
wp option delete 'autocontent_credits'
wp option delete 'autocontent_frequency'
wp option delete 'autocontent_setup_completed'
wp option delete 'autocontent_redirect_to_setup'
wp option delete 'autocontent_featured_image'
wp option delete 'autocontent_subject'
wp option delete 'autocontent_tone'
wp option delete 'autocontent_post_image'
wp option delete 'autocontent_image_style'
wp option delete 'autocontent_backlink'
wp option delete 'autocontent_affiliate_link'
wp option delete 'autocontent_affliate_link'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'autocontent_keyword_%'"
wp option delete 'autocontent_keyword_1'
wp option delete 'autocontent_keyword_2'
wp option delete 'autocontent_keyword_3'
wp option delete 'autocontent_keyword_4'
wp option delete 'autocontent_keyword_5'
wp option delete 'autocontent_keywords'
wp option delete 'autocontent_image_type'

# Clear Cron Jobs
wp cron event delete 'autocontent_monthly_hook'
wp cron event delete 'autocontent_event_hook'

