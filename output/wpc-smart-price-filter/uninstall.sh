#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_display_shop'

# Delete Transients
wp transient delete 'wpclever_plugins'

