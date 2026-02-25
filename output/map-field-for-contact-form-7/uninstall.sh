#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gmfcf_country_code'
wp option delete 'gmfcf_address_option'
wp option delete 'gmfcf_cf7_geo_api_key'
wp option delete 'gmfcf_map_height'
wp option delete 'gmfcf_cf7_geo_gpa_page'

