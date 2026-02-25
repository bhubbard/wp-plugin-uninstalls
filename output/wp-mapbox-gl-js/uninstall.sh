#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'post_type_rules_flushed_gl_js_maps'
wp option delete 'mapbox_gl_js_access_token'
wp option delete 'mapbox_gl_js_secret_access_token'
wp option delete 'mapbox_gl_js_username'
wp option delete 'wp_mapbox_gl_js_upgrade'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_mapbox_gl_js_map_object'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_mapbox_gl_js_map_object'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_mapbox_gl_js_map_object'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_mapbox_gl_js_map_object'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_mapbox_gl_js_hidden_in_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_mapbox_gl_js_hidden_in_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_mapbox_gl_js_hidden_in_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_mapbox_gl_js_hidden_in_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wp_mapbox_gl_js_dataset_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wp_mapbox_gl_js_dataset_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wp_mapbox_gl_js_dataset_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wp_mapbox_gl_js_dataset_id'"
