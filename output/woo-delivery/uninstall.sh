#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'coderockz_woo_delivery_option_delivery_settings'
wp option delete 'coderockz_woo_delivery_date_settings'
wp option delete 'coderockz_woo_delivery_pickup_date_settings'
wp option delete 'coderockz_woo_delivery_time_settings'
wp option delete 'coderockz_woo_delivery_pickup_settings'
wp option delete 'coderockz_woo_delivery_localization_settings'
wp option delete 'coderockz_woo_delivery_other_settings'
wp option delete 'woocommerce_version'
wp option delete 'coderockz_woo_delivery_review_notice'
wp option delete 'coderockz-woo-delivery-activation-time'
wp option delete 'coderockz_woo_delivery_date_time_change'
wp option delete 'woocommerce_ship_to_destination'
wp option delete 'coderockz_woo_delivery_pickup_location_settings'
wp option delete 'coderockz_woo_delivery_additional_field_settings'
wp option delete 'et_divi'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickup_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pickup_time'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'delivery_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'delivery_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'delivery_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'delivery_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_virtual'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_downloadable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_downloadable'"
