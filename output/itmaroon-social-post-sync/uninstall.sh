#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'postgetType'
wp option delete 'itmar_facebook_selected_page_id'
wp option delete 'itmar_facebook_granted'
wp option delete 'itmar_facebook_access_token'
wp option delete 'itmar_facebook_expires_at'
wp option delete 'itmar_facebook_user'
wp option delete 'itmar_facebook_pages'
wp option delete 'itmar_wait_video'
wp option delete 'itmar_twitter_access_token'
wp option delete 'itmar_twitter_expires_at'
wp option delete 'itmar_twitter_refresh_token'
wp option delete 'itmar_twitter_user'
wp option delete 'itmar_post_needs_flush'
wp option delete 'itmar_permission_error'
wp option delete 'itmar_ogp_enabled'
wp option delete 'itmar_ogp_site_name'
wp option delete 'itmar_ogp_default_image'
wp option delete 'itmar_ogp_square_image'
wp option delete 'itmar_ogp_twitter_card'

# Delete Transients
wp transient delete 'itmar_convert_jobs_cache'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twitter_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twitter_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twitter_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twitter_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'facebook_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'facebook_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'facebook_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'facebook_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'instagram_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'instagram_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'instagram_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'instagram_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'custom_revisions_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'custom_revisions_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'custom_revisions_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'custom_revisions_count'"
