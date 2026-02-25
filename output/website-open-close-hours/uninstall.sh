#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woch_version'
wp option delete 'woch_mon_web_status'
wp option delete 'woch_tues_web_status'
wp option delete 'woch_wed_web_status'
wp option delete 'woch_thurs_web_status'
wp option delete 'woch_fri_web_status'
wp option delete 'woch_sat_web_status'
wp option delete 'woch_sun_web_status'
wp option delete 'woch_mon_open_time'
wp option delete 'woch_mon_close_time'
wp option delete 'woch_tues_open_time'
wp option delete 'woch_tues_close_time'
wp option delete 'woch_wed_open_time'
wp option delete 'woch_wed_close_time'
wp option delete 'woch_thurs_open_time'
wp option delete 'woch_thurs_close_time'
wp option delete 'woch_fri_open_time'
wp option delete 'woch_fri_close_time'
wp option delete 'woch_sat_open_time'
wp option delete 'woch_sat_close_time'
wp option delete 'woch_sun_open_time'
wp option delete 'woch_sun_close_time'
wp option delete 'woch_RefererValue'
wp option delete 'woch_RefererValue_page'
wp option delete 'woch_redirect_type'

# Delete Transients
wp transient delete 'gwl-webopenclose-admin-notice-activation'

