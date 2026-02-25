#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'parcelbrokerwc-dismiss_notice'
wp option delete 'woocommerce_store_address'
wp option delete 'woocommerce_store_address_2'
wp option delete 'woocommerce_store_city'
wp option delete 'woocommerce_store_postcode'
wp option delete 'woocommerce_default_country'
wp option delete 'parcelbrokerwc-powered_by'
wp option delete 'woocommerce_dimension_unit'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_parcelbrokerwc-%' OR option_name LIKE '_site_transient_parcelbrokerwc-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_anonymized'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_anonymized'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_anonymized'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_anonymized'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcelbrokerwc-order_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcelbrokerwc-order_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcelbrokerwc-order_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcelbrokerwc-order_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcelbrokerwc-errors_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcelbrokerwc-errors_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcelbrokerwc-errors_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcelbrokerwc-errors_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcelbrokerwc-use_customs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcelbrokerwc-use_customs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcelbrokerwc-use_customs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcelbrokerwc-use_customs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_package_length'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_package_length'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_package_length'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_package_length'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_package_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_package_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_package_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_package_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_package_height'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_package_height'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_package_height'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_package_height'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcelbrokerwc-order_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcelbrokerwc-order_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcelbrokerwc-order_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcelbrokerwc-order_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcelbrokerwc-parcel_list'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcelbrokerwc-parcel_list'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcelbrokerwc-parcel_list'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcelbrokerwc-parcel_list'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcelbrokerwc-xml'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcelbrokerwc-xml'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcelbrokerwc-xml'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcelbrokerwc-xml'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcelbrokerwc-error-mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcelbrokerwc-error-mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcelbrokerwc-error-mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcelbrokerwc-error-mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_parcelbrokerwc-error-date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_parcelbrokerwc-error-date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_parcelbrokerwc-error-date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_parcelbrokerwc-error-date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bookSuccess'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bookSuccess'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bookSuccess'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bookSuccess'"
