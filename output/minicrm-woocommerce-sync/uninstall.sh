#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_tax_based_on'
wp option delete 'minicrm_plugin_activated'

# Delete Transients
wp transient delete 'minicrm_project_ids_cache'

