#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_lco_settings'
wp option delete 'woocommerce_ledyer_payments_settings'
wp option delete 'lom_settings'

# Delete Transients
wp transient delete 'ledyer_token'

