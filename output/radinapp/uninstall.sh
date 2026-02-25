#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dapp_SECRETKEY'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dpp_location_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dpp_location_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dpp_location_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dpp_location_user'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_is_enable_add_to_cart_fast'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_is_enable_add_to_cart_fast'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_is_enable_add_to_cart_fast'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_is_enable_add_to_cart_fast'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_digiappsaz_sale_price_dates_to'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_digiappsaz_sale_price_dates_to'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_digiappsaz_sale_price_dates_to'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_digiappsaz_sale_price_dates_to'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_digiappsaz_sale_price_dates_from'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_digiappsaz_sale_price_dates_from'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_digiappsaz_sale_price_dates_from'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_digiappsaz_sale_price_dates_from'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
