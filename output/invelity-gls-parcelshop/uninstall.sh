#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'invelity-plugins-description'
wp transient delete 'invelity-plugins-ad'
wp transient delete 'invelity-admin-message-gls-parcelshop'

# Clear Cron Jobs
wp cron event delete 'invelityGlsParcelShopCron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inv_gls_picked_shop_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inv_gls_picked_shop_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inv_gls_picked_shop_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inv_gls_picked_shop_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inv_gls_picked_shop_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inv_gls_picked_shop_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inv_gls_picked_shop_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inv_gls_picked_shop_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inv_gls_picked_shop_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inv_gls_picked_shop_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inv_gls_picked_shop_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inv_gls_picked_shop_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'inv_gls_parcelshop_id_dopravy'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'inv_gls_parcelshop_id_dopravy'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'inv_gls_parcelshop_id_dopravy'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'inv_gls_parcelshop_id_dopravy'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_city'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_postcode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_shipping_address_1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_shipping_address_1'"
