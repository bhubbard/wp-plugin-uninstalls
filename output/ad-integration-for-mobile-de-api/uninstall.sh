#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mobile_api_username'
wp option delete 'mobile_api_password'
wp option delete 'mobile_api_orderby'
wp option delete 'mobile_api_last_sync'
wp option delete 'mobile_api_custom_slug'
wp option delete 'mobile_api_custom_term'
wp option delete 'mobile_api_license'
wp option delete 'mobile_api_is_licensed'

# Clear Cron Jobs
wp cron event delete 'mobile_api_cron_hourly'
wp cron event delete 'mobile_api_cron_weekly'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_fuel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_fuel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_fuel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_fuel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_mileage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_mileage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_mileage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_mileage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_mobileAdId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_mobileAdId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_mobileAdId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_mobileAdId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mobile_api_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mobile_api_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mobile_api_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mobile_api_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_power'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_power'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_power'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_power'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_firstRegistration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_firstRegistration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_firstRegistration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_firstRegistration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_consumptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_consumptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_consumptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_consumptions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_emissions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_emissions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_emissions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_emissions'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_images'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_images'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_images'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_images'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_seller'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_seller'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_seller'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_seller'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_vin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_vin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_vin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_vin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_gearbox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_gearbox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_gearbox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_gearbox'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_numberOfPreviousOwners'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_numberOfPreviousOwners'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_numberOfPreviousOwners'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_numberOfPreviousOwners'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_detailPageUrl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_detailPageUrl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_detailPageUrl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_detailPageUrl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mobile_api_vehicleClass'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mobile_api_vehicleClass'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mobile_api_vehicleClass'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mobile_api_vehicleClass'"
