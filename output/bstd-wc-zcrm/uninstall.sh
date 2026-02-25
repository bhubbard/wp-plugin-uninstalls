#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bcformpro_integrate_key_data'
wp option delete 'bcform_secret_api_key'
wp option delete 'bc_inventory_connector_installed'
wp option delete 'bc_inventory_connector_version'

# Delete Transients
wp transient delete 'bc_inventory_connector_activation_redirect'
wp transient delete 'bc_inventory_connector_prevent_tracker_notice'

