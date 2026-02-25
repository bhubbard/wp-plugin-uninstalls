#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'thswc_since'
wp option delete 'thswc_user_role'
wp option delete 'thswc_user_email'
wp option delete 'thswc_brand_logo'
wp option delete 'thswc_brand_color'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'woocommerce_enable_order_comments'
wp option delete 'woocommerce_tax_total_display'
wp option delete 'woocommerce_enable_shipping_calc'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_thswc_check_preview_%' OR option_name LIKE '_site_transient_thswc_check_preview_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_thswc_template_preview%' OR option_name LIKE '_site_transient_thswc_template_preview%'"
wp transient delete 'thswc_installing'

