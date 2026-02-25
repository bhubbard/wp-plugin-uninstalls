#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_based_on'
wp option delete 'woocommerce_tax_round_at_subtotal'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"

