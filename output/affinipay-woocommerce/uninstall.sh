#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_cio4wc_settings'
wp option delete 'woocommerce_force_ssl_checkout'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chargeio_test_customer_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chargeio_test_customer_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chargeio_test_customer_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chargeio_test_customer_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_chargeio_live_customer_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_chargeio_live_customer_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_chargeio_live_customer_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_chargeio_live_customer_info'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ChargeIO Fee'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ChargeIO Fee'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ChargeIO Fee'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ChargeIO Fee'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ChargeIO Customer Id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ChargeIO Customer Id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ChargeIO Customer Id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ChargeIO Customer Id'"
