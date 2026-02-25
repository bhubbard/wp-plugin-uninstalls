#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_AMPLIFY_API_KEY'
wp option delete '_AMPLIFY_API_SECRET'
wp option delete '_AMPLIFY_PROJECT_ID'
wp option delete 'amplify_login_loginform'
wp option delete 'amplify_login_loginform_widgetId'
wp option delete 'amplify_login_registration'
wp option delete 'amplify_login_registration_widgetId'
wp option delete 'amplify_track_searches'
wp option delete 'amplify_track_posts'
wp option delete 'amplify_track_pages'
wp option delete 'amplify_track_archives'
wp option delete 'amplify_opengraphtag'
wp option delete 'amplify_twittercard'
wp option delete 'amplify_twittername'
wp option delete 'amplify_fb_app_id'
wp option delete 'amplify_facebook_admins'
wp option delete 'amplify_loginprofile'
wp option delete 'amplify_login_abovecomment'
wp option delete 'amplify_login_abovecomment_widgetId'
wp option delete 'amplify_login_sidebar'
wp option delete 'amplify_login_sidebar_widgetId'
wp option delete 'amplify_share_above_post'
wp option delete 'amplify_share_above_post_widgetId'
wp option delete 'amplify_share_below_post'
wp option delete 'amplify_share_below_post_widgetId'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amplifyUserId'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amplifyUserId'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amplifyUserId'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amplifyUserId'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'email'"
