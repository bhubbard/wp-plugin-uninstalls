#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdesk_helper_options'
wp option delete 'flexible_coupons_expiry_date_format'
wp option delete '_wcml_settings'
wp option delete 'woocommerce_currency'
wp option delete 'flexible_coupons_sample_templates'
wp option delete 'flexible_coupons_wpml_support'
wp option delete 'wpdesk_tracker_notice'
wp option delete 'wpdesk_tracker_agree'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flexible_coupon_variation_base_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flexible_coupon_variation_base_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flexible_coupon_variation_base_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flexible_coupon_variation_base_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_editor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_editor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_editor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_editor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcpdf_coupon_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcpdf_coupon_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcpdf_coupon_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcpdf_coupon_data'"
