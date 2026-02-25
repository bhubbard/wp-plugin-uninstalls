#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'herogi_api_key'
wp option delete 'herogi_api_secret'
wp option delete 'herogi_tracking_domain'
wp option delete 'herogi_api_url'
wp option delete 'herogi_push_notification_enabled'
wp option delete 'herogi_location_tracking_enabled'
wp option delete 'herogi_click_tracking_enabled'
wp option delete 'herogi_pageload_tracking_enabled'
wp option delete 'herogi_sdk_url'

