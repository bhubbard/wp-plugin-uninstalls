#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_dibs_easy_settings'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'woocommerce_registration_generate_username'
wp option delete 'woocommerce_registration_generate_password'
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'dibs_easy_debuglog'
wp option delete 'woocommerce_shipping_cost_requires_address'
wp option delete 'woocommerce_allowed_countries'
wp option delete 'woocommerce_smart_coupon_apply_before_tax'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dibs_payment_id_%' OR option_name LIKE '_site_transient_dibs_payment_id_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_email'"
