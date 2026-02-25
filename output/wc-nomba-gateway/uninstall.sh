#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_nomba_settings'

# Delete Transients
wp transient delete 'wc_nomba_credentials'

