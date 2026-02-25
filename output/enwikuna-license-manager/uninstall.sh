#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_enable_guest_checkout'
wp option delete 'woocommerce_enable_signup_and_login_from_checkout'
wp option delete 'active_sitewide_plugins'
wp option delete 'woocommerce_manage_stock'
wp option delete 'woocommerce_myaccount_licenses_endpoint'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elm_%'"
wp option delete 'woocommerce_myaccount_view_license_endpoint'
wp option delete 'woocommerce_myaccount_validate_license_endpoint'
wp option delete 'woocommerce_email_footer_text'

# Delete Transients
wp transient delete 'doing_cron'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_elm_%' OR option_name LIKE '_site_transient_elm_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elm_required_product_licenses_product_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elm_required_product_licenses_product_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elm_required_product_licenses_product_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elm_required_product_licenses_product_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elm_product_use_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elm_product_use_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elm_product_use_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elm_product_use_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elm_product_use_stock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elm_product_use_stock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elm_product_use_stock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elm_product_use_stock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elm_product_assigned_generator'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elm_product_assigned_generator'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elm_product_assigned_generator'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elm_product_assigned_generator'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elm_product_uuid'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elm_product_uuid'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elm_product_uuid'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elm_product_uuid'"
