#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'off_analytics_notice_displayed'
wp option delete 'wcliqpay_analytics_enabled'
wp option delete 'woocommerce_liqpay_settings'

# Delete Transients
wp transient delete 'wcliqpay_send_remote_analytics_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_wcliqpay_notice_dismissed_%' OR option_name LIKE '_site_transient_wcliqpay_notice_dismissed_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'product_rro_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'product_rro_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'product_rro_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'product_rro_id'"
