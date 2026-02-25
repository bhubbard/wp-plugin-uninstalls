#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xoo_cp_added_cart_key'
wp option delete 'xoo-cp-gl-atcem'
wp option delete 'xoo-cp-version'
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_theme_templates_data'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_xoo_tracking_consent_last_sent_%' OR option_name LIKE '_site_transient_xoo_tracking_consent_last_sent_%'"

