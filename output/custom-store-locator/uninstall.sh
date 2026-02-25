#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'csl_map_api_key'
wp option delete 'csl_map_default_radius'
wp option delete 'csl_include_cat'
wp option delete 'csl_include_title'
wp option delete 'csl_map_type'
wp option delete 'csl_custom_map_marker'
wp option delete 'csl_location_default_sorting'
wp option delete 'csl_map_layout'
wp option delete 'csl_primary_color'
wp option delete 'csl_primary_color_dark'
wp option delete 'csl_secondary_color'
wp option delete 'csl_secondary_color_light'
wp option delete 'csl_fullwidth_include_loc'
wp option delete 'csl_autocompletesearchbox'
wp option delete 'csl_country_restriction'
wp option delete 'csl_distance_units'
wp option delete 'csl_map_default_zoom'
wp option delete 'csl_disable_clustermarker'
wp option delete 'csl_hide_phone'
wp option delete 'csl_hide_email'
wp option delete 'csl_hide_fax'
wp option delete 'csl_hide_website'
wp option delete 'csl_hide_hours'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'websiteurl'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'websiteurl'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'websiteurl'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'websiteurl'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'business_phone_number'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'business_phone_number'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'business_phone_number'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'business_phone_number'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'business_fax'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'business_fax'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'business_fax'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'business_fax'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'business_contact_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'business_contact_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'business_contact_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'business_contact_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'business_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'business_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'business_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'business_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'business_zip_code'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'business_zip_code'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'business_zip_code'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'business_zip_code'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'business_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'business_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'business_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'business_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'business_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'business_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'business_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'business_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'business_storehours'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'business_storehours'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'business_storehours'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'business_storehours'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'category_marker'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'category_marker'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'category_marker'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'category_marker'"
