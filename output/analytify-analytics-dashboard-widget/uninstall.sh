#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_analytics_token'
wp option delete 'pa_google_token'
wp option delete 'analytify_widget_date_differ'

