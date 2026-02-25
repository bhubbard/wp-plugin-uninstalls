#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hypersell_token'
wp option delete 'woocommerce_currency'

# Delete Transients
wp transient delete 'hypersell_installing'

