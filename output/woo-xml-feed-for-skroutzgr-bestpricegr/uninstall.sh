#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'features'
wp option delete 'instockavailability'
wp option delete 'ifoutofstock'
wp option delete 'include_tax'
wp option delete 'group_variations'
wp option delete 'custom_productId'
wp option delete 'custom_mpn'
wp option delete 'skroutz_atts_color'
wp option delete 'skroutz_atts_size'
wp option delete 'skroutz_atts_manuf'
wp option delete 'exclude_cats'
wp option delete 'enable_gtin'
wp option delete 'gtin_label'
wp option delete 'gtin_value'
wp option delete 'rollback'
wp option delete 'last_update'
wp option delete 'woocommerce_weight_unit'

# Clear Cron Jobs
wp cron event delete 'skroutz_xml_hourly_event'

