#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'onedelivery_company_name'
wp option delete 'onedelivery_postcode'
wp option delete 'onedelivery_city'
wp option delete 'onedelivery_street'
wp option delete 'onedelivery_street_number'
wp option delete 'onedelivery_country_code'
wp option delete 'onedelivery_api_username'
wp option delete 'onedelivery_api_password'
wp option delete 'onedelivery_label_format'

# Clear Cron Jobs
wp cron event delete 'onebyal_wcs_process_tracking_orders'

