#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'shipmondo_migration_version'
wp option delete 'shipmondo_settings'
wp option delete 'woocommerce_weight_unit'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'Price_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'Weight_%'"

