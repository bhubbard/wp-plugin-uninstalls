#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'smartpayinvoices_option_db_version'
wp option delete 'smartpayinvoices_options'
wp option delete 'woocommerce_tax_round_at_subtotal'

