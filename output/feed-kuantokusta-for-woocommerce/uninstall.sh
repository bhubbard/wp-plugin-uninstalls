#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_plugin_mode'"
wp option delete 'woocommerce_weight_unit'

# Delete Transients
wp transient delete 'webdados_invoicexpress_nag'

