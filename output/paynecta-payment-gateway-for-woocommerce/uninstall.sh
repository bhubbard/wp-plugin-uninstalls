#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_paynecta_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_paynecta_payment_links_%' OR option_name LIKE '_site_transient_paynecta_payment_links_%'"

