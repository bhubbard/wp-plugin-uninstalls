#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'social_feed_ez_app_id'
wp option delete 'social_feed_ez_app_secret'
wp option delete 'social_feed_ez_ll_access_token'
wp option delete 'social_feed_ez_page_id'
wp option delete 'social_feed_ez_access_token'
wp option delete 'social_feed_display_type'
wp option delete 'social_feed_ez_field__options'

