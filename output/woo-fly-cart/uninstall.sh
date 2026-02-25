#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woofc_settings'
wp option delete 'woofc_localization'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woofc_%'"
wp option delete 'woocommerce_tax_total_display'

# Delete Transients
wp transient delete 'wpclever_plugins'

