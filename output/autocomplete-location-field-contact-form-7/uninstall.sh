#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gwaa_country_code'
wp option delete 'gwaa_address_option'
wp option delete 'gwaa_place_types'
wp option delete 'gwaa_enable_map'
wp option delete 'gwaa_cf7_geo_api_key'
wp option delete 'gwaa_tr_enter_loc'
wp option delete 'gwaa_tr_apartment'
wp option delete 'gwaa_tr_city'
wp option delete 'gwaa_tr_state'
wp option delete 'gwaa_tr_postalcode'
wp option delete 'gwaa_tr_country'
wp option delete 'gwaa_cf7_geo_gpa_page'

