#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdo_wc_acf_option_fields'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_cdo_wc_cloning_order_%' OR option_name LIKE '_site_transient_cdo_wc_cloning_order_%'"
wp transient delete 'cdo_wc_clone_order_admin_notice'
wp transient delete 'cdo_wc_activated_plugin'

