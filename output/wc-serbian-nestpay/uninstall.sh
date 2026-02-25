#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wcnpg_version'
wp option delete 'wcnpg_schema_version'
wp option delete 'wcpng_schema_missing_tables'
wp option delete 'woocommerce_nestpay_settings'

# Delete Transients
wp transient delete 'wcnpg_installing'

