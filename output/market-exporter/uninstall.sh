#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wooya_settings'
wp option delete 'market_exporter_shop_settings'
wp option delete 'wooya_version'
wp option delete 'wooya-progress-step'
wp option delete 'market_exporter_doing_cron'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'market_exporter_notice_hide'

# Delete Transients
wp transient delete 'wooya-generating-yml'

# Clear Cron Jobs
wp cron event delete 'market_exporter_cron'

