#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'cashbaba_token'

