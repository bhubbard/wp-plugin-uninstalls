#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'geotagmapper_country'
wp option delete 'geotagmapper_state'
wp option delete 'geotagmapper_city'
wp option delete 'geotagmapper_street'
wp option delete 'geotagmapper_zip'
wp option delete 'geotagmapper_lat'
wp option delete 'geotagmapper_lng'
wp option delete 'geotagmapper_country_code'
wp option delete 'geotagmapper_subcountry_code'
wp option delete 'geotagmapper_place_on_front'
wp option delete 'geotagmapper_place_on_single_post'
wp option delete 'geotagmapper_place_on_single_page'
wp option delete 'geotagmapper_place_on_category'
wp option delete 'geotagmapper_place_on_tag'
wp option delete 'geotagmapper_place_on_search'

