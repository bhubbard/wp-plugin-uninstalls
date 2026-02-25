#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsp_lcseo_businesstype'
wp option delete 'wpsp_lbs_name'
wp option delete 'wpsp_lbs_straddress'
wp option delete 'wpsp_lbs_city'
wp option delete 'wpsp_lbs_state'
wp option delete 'wpsp_lbs_addresscountry'
wp option delete 'wpsp_lbs_postal'
wp option delete 'wpsp_lbs_image'
wp option delete 'wpsp_lbs_phone'
wp option delete 'wpsp_lbs_url'
wp option delete 'wpsp_lbs_map'
wp option delete 'wpsp_lcseo_pricerange1'
wp option delete 'wpsp_lcseo_pricerange'
wp option delete 'wpsp_lbs_active'
wp option delete 'wpsp_lcseo_geo'
wp option delete 'wpsp_lcseo_lat'
wp option delete 'wpsp_lcseo_lon'
wp option delete 'pro_version_notification_jsonld_dismissed_until'

