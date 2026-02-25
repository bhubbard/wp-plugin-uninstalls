#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'holnix_conf'
wp option delete 'holnix_api_token'
wp option delete 'holnix_import_total_chunks'
wp option delete 'holnix_import_start_time'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'

# Delete Transients
wp transient delete 'holnix_update_message'
wp transient delete 'holnix_api_translations'

