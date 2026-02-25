#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'robonobo_weight_rates'
wp option delete 'robonobo_api_key'
wp option delete 'robonobo_api_secret'
wp option delete 'robonobo_max_hour_for_today_delivery'
wp option delete 'robonobo_webhook_password'
wp option delete 'robonobo_company_name'
wp option delete 'robonobo_login'
wp option delete 'robonobo_secret'
wp option delete 'robonobo_company_address'

