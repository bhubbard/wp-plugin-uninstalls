#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pl_an_brand_credentials'
wp option delete 'pl_an_active'

# Clear Cron Jobs
wp cron event delete 'press_loft_heartbeat_cron_hook'
wp cron event delete 'press_loft_sale_post_pack_cron_hook'

