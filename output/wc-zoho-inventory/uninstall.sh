#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bitformpro_integrate_key_data'
wp option delete 'bitform_secret_api_key'
wp option delete 'bit_wc_zoho_inventory_installed'
wp option delete 'bit_wc_zoho_inventory_version'

# Delete Transients
wp transient delete 'bit_wc_zoho_inventory_activation_redirect'
wp transient delete 'bit_wc_zoho_inventory_prevent_tracker_notice'

