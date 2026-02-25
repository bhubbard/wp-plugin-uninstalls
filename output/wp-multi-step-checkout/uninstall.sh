#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wmsc_options'
wp option delete 'gm_deactivate_checkout_hooks'
wp option delete 'woocommerce_gzd_display_checkout_fallback'
wp option delete 'mollie_wc_gateway_in3_settings'
wp option delete 'min_age_woo_checkout_title'
wp option delete 'coderockz_woo_delivery_other_settings'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_enable_checkout_login_reminder'
wp option delete 'wmsc_activation_time'
wp option delete 'wmsc_version'
wp option delete 'wpmc-settings'

