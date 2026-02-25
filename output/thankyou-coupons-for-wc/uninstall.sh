#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wc_wctc_enabled'
wp option delete 'wc_wctc_coupon_type'
wp option delete 'wc_wctc_coupon_amount'
wp option delete 'wc_wctc_free_shipping'
wp option delete 'wc_wctc_coupon_limit'
wp option delete 'wc_wctc_user_limit'
wp option delete 'wc_wctc_individual_use'
wp option delete 'wc_wctc_restrict_creation'
wp option delete 'wc_wctc_before_tax'
wp option delete 'wc_wctc_coupon_min_spend'
wp option delete 'wc_wctc_free_extax'
wp option delete 'wc_wctc_expires_in_days'
wp option delete 'wc_wctc_message'
wp option delete 'wc_wctc_expiry_message'
wp option delete 'wc_wctc_coupon_color'
wp option delete 'wc_wctc_restrict_paid'

