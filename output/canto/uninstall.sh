#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'fbc_app_api'
wp option delete 'fbc_flight_domain'
wp option delete 'fbc_app_token'
wp option delete 'fbc_app_expire_token'
wp option delete 'fbc_app_timestamp'
wp option delete 'fbc_duplicates'
wp option delete 'fbc_cron'
wp option delete 'fbc_schedule'
wp option delete 'fbc_cron_time_day'
wp option delete 'fbc_cron_time_hour'
wp option delete 'fbc_app_id'
wp option delete 'fbc_app_secret'
wp option delete 'fbc_app_refresh_token'
wp option delete 'fbc_token_expire'
wp option delete 'fbc_flight_username'
wp option delete 'fbc_flight_password'
wp option delete 'fbc_refresh_token_expire'
wp option delete 'fbc_refresh_token'
wp option delete 'fbc_cron_start'
wp option delete 'fbc_app_token_expire'
wp option delete 'fbc_app_refresh_token_expire'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"

# Clear Cron Jobs
wp cron event delete 'fbc_scheduled_update'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fbc_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fbc_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fbc_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fbc_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'fbc_scheme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'fbc_scheme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'fbc_scheme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'fbc_scheme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'copyright'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'copyright'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'copyright'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'copyright'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'terms'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_canto_asset_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_canto_asset_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_canto_asset_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_canto_asset_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_canto_asset_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_canto_asset_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_canto_asset_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_canto_asset_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_acf_image_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_acf_image_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_acf_image_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_acf_image_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
