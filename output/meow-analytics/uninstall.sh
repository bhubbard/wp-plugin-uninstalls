#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mga_client_id'
wp option delete 'mga_client_secret'
wp option delete 'mga_access_token'
wp option delete 'mga_refresh_token'
wp option delete 'mga_tracking_id'
wp option delete 'mga_property_id'
wp option delete 'mga_tracking_ids'
wp option delete 'mga_disable_tracking'
wp option delete 'mga_track_logged_users'
wp option delete 'mga_track_power_users'
wp option delete 'meowapps_hide_ads'
wp option delete 'mga_expires_at'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_license'"
wp option delete 'force_sslverify'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_pro_serial'"
wp option delete 'meowapps_hide_meowapps'
wp option delete 'litespeed.conf.cache-rest'
wp option delete 'mwai_options'
wp option delete 'meowapps_news'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_rating_date'"

# Delete Transients
wp transient delete 'mga_message'
wp transient delete 'mga_error'

