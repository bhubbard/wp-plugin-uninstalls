#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_epspgw_settings'

# Delete Transients
wp transient delete 'epspgw_redirect'

