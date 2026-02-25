#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'simpbore_license_key'
wp option delete 'simpbore_license_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pickup_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pickup_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pickup_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pickup_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rental_price_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rental_price_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rental_price_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rental_price_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_rental_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_rental_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_rental_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_rental_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_available_dates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_available_dates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_available_dates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_available_dates'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_extra_services'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_extra_services'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_extra_services'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_extra_services'"
