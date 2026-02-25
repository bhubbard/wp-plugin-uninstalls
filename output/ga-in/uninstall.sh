#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gainwp_got_updated'
wp option delete 'gainwp_redeemed_code'
wp option delete 'gainwp_network_options'
wp option delete 'gainwp_options'
wp option delete 'gainwp_version'
wp option delete 'gadash_network_options'
wp option delete 'gadash_options'
wp option delete 'ga_dash_token'
wp option delete 'ga_dash_clientid'
wp option delete 'ga_dash_clientsecret'
wp option delete 'ga_dash_tableid_jail'
wp option delete 'ga_dash_frontend'
wp option delete 'ga_dash_jailadmins'
wp option delete 'ga_dash_tracking_type'
wp option delete 'ga_dash_anonim'
wp option delete 'ga_dash_userapi'
wp option delete 'ga_event_tracking'
wp option delete 'ga_event_downloads'
wp option delete 'ga_target_geomap'
wp option delete 'ga_realtime_pages'
wp option delete 'ga_dash_profile_list'
wp option delete 'ga_dash_access'
wp option delete 'ga_dash_access_front'
wp option delete 'ga_dash_access_back'
wp option delete 'ga_dash_style'
wp option delete 'ga_dash_tracking'
wp option delete 'track_exclude'
wp option delete 'ga_dash_refresh_token'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gainwp_cache_%'"

