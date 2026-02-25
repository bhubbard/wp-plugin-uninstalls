#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'itw_username'
wp option delete 'itw_userid'
wp option delete 'itw_manuallstid'
wp option delete 'itw_accesstoken'
wp option delete 'itw_accesstoken_expires'
wp option delete 'itw_version'
wp option delete 'itw_imagelink'
wp option delete 'itw_debugmode'
wp option delete 'itw_imagesave'
wp option delete 'itw_imagefeat'
wp option delete 'itw_post_date'
wp option delete 'itw_postformat'
wp option delete 'itw_poststatus'
wp option delete 'itw_posttype'
wp option delete 'itw_defaulttitle'
wp option delete 'itw_ishome'
wp option delete 'itw_last_run'
wp option delete 'itw_configured'
wp option delete 'itw_imagesize'
wp option delete 'itw_imageclass'
wp option delete 'itw_postcats'
wp option delete 'itw_postauthor'
wp option delete 'itw_customtitle'
wp option delete 'itw_customtext'
wp option delete 'itw_pluginlink'

# Delete Transients
wp transient delete 'itw_posting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instagrate_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instagrate_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instagrate_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instagrate_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
