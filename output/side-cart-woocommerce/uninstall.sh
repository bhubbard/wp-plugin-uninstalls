#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'xoo-wsc-pattern-init'
wp option delete 'xoo-wsc-old-header-layout'
wp option delete 'xoo-el-version'
wp option delete 'xoo-el-sy-options'
wp option delete 'xoo-el-gl-options'
wp option delete 'xoo-el-settings-init'
wp option delete 'xoo-wsc-enqueue-cartfragment'
wp option delete 'xoo-wsc-gl-options'
wp option delete 'xoo-wsc-sy-options'
wp option delete 'xoo_tracking_consent_side-cart-woocommerce'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'xoo_tracking_consent_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_theme_templates_data'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_xoo_tracking_consent_last_sent_%' OR option_name LIKE '_site_transient_xoo_tracking_consent_last_sent_%'"

