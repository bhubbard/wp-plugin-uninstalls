#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'plst_aiseo_geo_api_provider'
wp option delete 'plst_aiseo_geo_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plst_aiseo_geo_entity_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plst_aiseo_geo_entity_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plst_aiseo_geo_entity_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plst_aiseo_geo_entity_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plst_aiseo_geo_summary'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plst_aiseo_geo_summary'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plst_aiseo_geo_summary'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plst_aiseo_geo_summary'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_plst_aiseo_geo_hidden'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_plst_aiseo_geo_hidden'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_plst_aiseo_geo_hidden'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_plst_aiseo_geo_hidden'"
