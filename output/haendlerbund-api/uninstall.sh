#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'haendlerbund_api_token'
wp option delete 'haendlerbund_selected_options'
wp option delete 'haendlerbund_selected_page_ids'
wp option delete 'hbdocabruf'

# Clear Cron Jobs
wp cron event delete 'haendlerbund_cron_event'

