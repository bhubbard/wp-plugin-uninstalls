#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'envira_lite_version'
wp option delete 'envira_lite_wizard'
wp option delete 'envira_version'
wp option delete 'envira_over_time'
wp option delete 'envira_debug'
wp option delete 'envira_pro_upgrade_header_dismissed'
wp option delete 'envira_gallery'
wp option delete 'envira_gallery_116'
wp option delete 'envira_gallery_121'
wp option delete 'envira_tags_taxonomy_migrated'
wp option delete 'envira_gallery_shareasale_id'
wp option delete 'envira_admin_menu_tooltip'
wp option delete 'envira_gallery_notices'
wp option delete 'hide_am_notices'
wp option delete 'envira_onboarding_data'
wp option delete 'envira_permissions_default'
wp option delete 'envira_gallery_review'
wp option delete 'envira_permissions_set_default'
wp option delete 'envira_usage_tracking_last_checkin'
wp option delete 'envira_usage_tracking_config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__eg_cache_%' OR option_name LIKE '_site_transient__eg_cache_%'"
wp transient delete '_eg_cache_all'
wp transient delete '_envira_lite_activation_redirect'
wp transient delete 'envira_lite_updated'
wp transient delete '_eg_addons'

# Clear Cron Jobs
wp cron event delete 'envira_admin_notifications_update'
wp cron event delete 'envira_usage_tracking_cron'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_gallery_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_gallery_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_gallery_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_gallery_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_gallery_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_gallery_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_gallery_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_gallery_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_has_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_has_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_has_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_has_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_in_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_in_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_in_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_in_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_gallery_old'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_gallery_old'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_gallery_old'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_gallery_old'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_gallery_old_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_gallery_old_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_gallery_old_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_gallery_old_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_in_posts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_in_posts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_in_posts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_in_posts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_eg_just_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_eg_just_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_eg_just_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_eg_just_published'"
