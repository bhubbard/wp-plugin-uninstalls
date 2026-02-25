#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avalon23_settings'
wp option delete 'avalon23_current_version'
wp option delete 'avalon23_db_ver'
wp option delete 'avalon23_seo'
wp option delete 'avalon23_seo_settings'
wp option delete 'woocommerce_tax_display_shop'

# Clear Cron Jobs
wp cron event delete 'avalon23_cache_count_data_auto_clean'

