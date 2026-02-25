#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_kueski-gateway_settings'

# Clear Cron Jobs
wp cron event delete 'isa_add_every_kueski_sync'

