#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tradetracker_connect_campaign_options'
wp option delete 'tradetracker_connect_webservice_options'
wp option delete 'tradetracker_connect_directlinking_options'
wp option delete 'tradetracker_connect_feed_options'
wp option delete 'tradetracker_connect_feed_generator'
wp option delete 'tradetracker_connect_scheduled_events'

# Clear Cron Jobs
wp cron event delete 'tradetracker_connect_feed_cron_hook'
wp cron event delete 'tradetracker_connect_order_cron_hook'

