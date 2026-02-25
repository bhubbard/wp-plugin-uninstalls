#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'jwdsp_general_settings'
wp option delete 'jwdsp_accepted_cpt'
wp option delete 'jwdsp_general_settings[post_types]'
wp option delete 'jwdsp_fontawesome'
wp option delete 'JWDSP_version'
wp option delete 'JWDSP_PLUGIN_PATH'
wp option delete 'JWDSP_PLUGIN_URL'
wp option delete 'JWDSP Plugin Path'
wp option delete 'JWDSP Plugin URL'
wp option delete 'jwdsp_username'
wp option delete 'jwdsp_repository'
wp option delete 'jwdsp_access_token'
wp option delete 'JWDSP_Accepted_Post_Types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'jwdsp_thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'jwdsp_thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'jwdsp_thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'jwdsp_thumbnail'"
