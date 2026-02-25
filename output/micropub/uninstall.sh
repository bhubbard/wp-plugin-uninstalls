#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'micropub_default_post_status'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'mf2_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'mf2_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'mf2_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'mf2_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_latitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_longitude'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'micropub_auth_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'micropub_auth_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'micropub_auth_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'micropub_auth_response'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'micropub_version'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'micropub_version'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'micropub_version'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'micropub_version'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mf2_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mf2_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mf2_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mf2_content'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'geo_timezone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'geo_timezone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'geo_timezone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'geo_timezone'"
