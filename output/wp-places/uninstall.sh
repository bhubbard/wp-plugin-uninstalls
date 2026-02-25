#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp_places_settings'
wp option delete 'WP_Places_Google_Attr_Setting_check'
wp option delete 'wp_places_legacy'
wp option delete 'WP_Places_Google_Id_Setting'
wp option delete 'WP_Places_CSS'
wp option delete 'WP_Places_Display_Div'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_WP_Places_meta_Google_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_WP_Places_meta_Google_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_WP_Places_meta_Google_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_WP_Places_meta_Google_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_places'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_places'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_places'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_places'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_WP_Places_meta_value_lat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_WP_Places_meta_value_lat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_WP_Places_meta_value_lat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_WP_Places_meta_value_lat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_WP_Places_meta_value_lon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_WP_Places_meta_value_lon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_WP_Places_meta_value_lon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_WP_Places_meta_value_lon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
