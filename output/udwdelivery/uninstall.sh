#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'udwd-extra_fee'
wp option delete 'udwd-api-customer-id'
wp option delete 'udwd-api-client-id'
wp option delete 'udwd-api-client-secret'
wp option delete 'woocommerce_store_address'
wp option delete 'udwd-phone_number'
wp option delete 'udwd-pickup_time-start'
wp option delete 'udwd-pickup_time-end'
wp option delete 'udwd-pickup_time-weekend'
wp option delete 'udwd-pickup_time-processing'

# Delete Transients
wp transient delete 'udwd-api-access-token'

