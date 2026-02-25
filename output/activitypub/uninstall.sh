#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'activitypub_db_version'
wp option delete 'activitypub_old_host'
wp option delete 'activitypub_tombstone_urls'
wp option delete 'activitypub_header_image'
wp option delete 'activitypub_blog_identifier'
wp option delete 'activitypub_blog_description'
wp option delete 'activitypub_actor_mode'
wp option delete 'activitypub_custom_post_content'
wp option delete 'activitypub_max_image_attachments'
wp option delete 'activitypub_allow_likes'
wp option delete 'activitypub_allow_reposts'
wp option delete 'activitypub_auto_approve_reactions'
wp option delete 'activitypub_default_quote_policy'
wp option delete 'activitypub_use_hashtags'
wp option delete 'activitypub_use_opengraph'
wp option delete 'activitypub_attribution_domains'
wp option delete 'activitypub_following_ui'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_oembed_%' OR option_name LIKE '_site_transient_oembed_%'"

# Clear Cron Jobs
wp cron event delete 'activitypub_send_post_activity'
wp cron event delete 'activitypub_send_update_activity'
wp cron event delete 'activitypub_send_delete_activity'
wp cron event delete 'importer_scheduled_cleanup'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'protocol'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'protocol'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'protocol'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'protocol'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activitypub_followers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activitypub_followers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activitypub_followers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activitypub_followers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'enclosure'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'activitypub_content_warning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'activitypub_content_warning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'activitypub_content_warning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'activitypub_content_warning'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
