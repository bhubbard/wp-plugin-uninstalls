#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_inicis_pro_settings'
wp option delete 'woocommerce_inicis_std_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_inicis_std_return_%' OR option_name LIKE '_site_transient_inicis_std_return_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_inicis_std_oid_%' OR option_name LIKE '_site_transient_inicis_std_oid_%'"
wp transient delete 'seoulcommerce_kg_inicis_pro_admin_notice'

