#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_weight_unit'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'wcus_nova_poshta_default_carrier'
wp option delete 'wcus_show_poshtomats'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_ukr_shipping_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wcus_%'"
wp option delete '_transient_shipping-transient-version'
wp option delete 'wcus_ukrposhta_default_carrier'
wp option delete 'wc_ukr_shipping_workers_version'
wp option delete 'wc_ukr_shipping_spinner_color'
wp option delete 'wc_ukr_shipping_np_lang'

# Delete Transients
wp transient delete 'smarty_parcel_acc'
wp transient delete 'smartyparcel_manifest'

# Clear Cron Jobs
wp cron event delete 'wcus_smartyparcel_auto_create_label'

