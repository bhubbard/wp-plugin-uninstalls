#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_rulehook_settings'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'

# Clear Cron Jobs
wp cron event delete 'rulehook_sync_event'

