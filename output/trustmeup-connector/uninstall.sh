#!/bin/bash
# WP-CLI Uninstall Script

# Clear Cron Jobs
wp cron event delete 'tmu/cron/fetch_trustmeup_products'
wp cron event delete 'tmu/cron/autoconnect_non_connected_products'

