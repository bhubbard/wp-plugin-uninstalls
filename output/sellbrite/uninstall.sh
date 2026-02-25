#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_sellbrite_consumer_key'
wp option delete 'woocommerce_api_enabled'
wp option delete 'woocommerce_sellbrite_consumer_secret'

# Delete Transients
wp transient delete '_wc_activation_redirect'

