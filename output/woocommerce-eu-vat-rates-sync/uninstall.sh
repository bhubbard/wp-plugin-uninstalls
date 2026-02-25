#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_classes'

# Clear Cron Jobs
wp cron event delete 'wc_eu_vat_rates_sync'

