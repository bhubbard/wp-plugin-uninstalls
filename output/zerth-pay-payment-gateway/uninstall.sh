#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_zerthpay_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_zerthpay_webhook_processed_%' OR option_name LIKE '_site_transient_zerthpay_webhook_processed_%'"

