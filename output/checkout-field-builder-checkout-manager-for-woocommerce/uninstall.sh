#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_fields_%'"
wp option delete 'wc_fields_billing'
wp option delete 'wc_fields_shipping'
wp option delete 'wc_fields_additional'
wp option delete '__dcfem_asset_version'
wp option delete 'dcfem_do_activation_redirect'
wp option delete 'woocommerce_ship_to_destination'

