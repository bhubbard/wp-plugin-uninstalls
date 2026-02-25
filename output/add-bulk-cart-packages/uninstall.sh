#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_add_bulk_cart_packages_products'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_add_bulk_cart_packages_products'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_add_bulk_cart_packages_products'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_add_bulk_cart_packages_products'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_add_bulk_cart_packages_quantities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_add_bulk_cart_packages_quantities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_add_bulk_cart_packages_quantities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_add_bulk_cart_packages_quantities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_package_complete_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_package_complete_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_package_complete_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_package_complete_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_add_bulk_cart_packages_coupon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_add_bulk_cart_packages_coupon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_add_bulk_cart_packages_coupon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_add_bulk_cart_packages_coupon'"
