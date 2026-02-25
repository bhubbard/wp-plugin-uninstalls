#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'store_name'
wp option delete 'company_name'
wp option delete 'yml_store'
wp option delete 'yml_pickup'
wp option delete 'yml_delivery'
wp option delete 'yml_description'
wp option delete 'yml_currencies'
wp option delete 'woocommerce_version'

# Clear Cron Jobs
wp cron event delete 'update_yml_file'

