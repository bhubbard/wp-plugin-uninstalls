#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'disallowed_keys'
wp option delete 'widget_block'
wp option delete 'bp-activity-db-version'
wp option delete 'bp-blogs-db-version'
wp option delete 'bp-friends-db-version'
wp option delete 'bp-groups-db-version'
wp option delete 'bp-messages-db-version'
wp option delete 'bp-xprofile-db-version'
wp option delete 'bp-db-version'
wp option delete '_bp_db_version'
wp option delete 'bp-core-db-version'
wp option delete '_bp-core-db-version'
wp option delete '_bp_retain_bp_default'
wp option delete 'hide-loggedout-adminbar'
wp option delete '_bp_community_visibility'
wp option delete '_bp_theme_package_id'
wp option delete 'bp-disable-account-deletion'
wp option delete 'bp-disable-avatar-uploads'
wp option delete 'bp-disable-cover-image-uploads'
wp option delete 'bp-enable-members-invitations'
wp option delete 'bp-enable-membership-requests'
wp option delete 'bp-disable-profile-sync'
wp option delete 'bp_restrict_group_creation'
wp option delete 'bp-disable-group-avatar-uploads'
wp option delete 'bp-disable-group-cover-image-uploads'
wp option delete 'bp-disable-group-activity-deletions'
wp option delete 'bp-disable-blogforum-comments'
wp option delete '_bp_enable_heartbeat_refresh'
wp option delete '_bp_enable_akismet'
wp option delete 'illegal_names'
wp option delete 'limited_email_domains'
wp option delete 'registration'

# Delete Transients
wp transient delete '_bp_activation_redirect'
wp transient delete '_bp_is_new_install'
wp transient delete 'bp_active_member_count'
wp transient delete 'theme_roots'
wp transient delete 'update_plugins'
wp transient delete '_bp_admin_signups_errors'

# Clear Cron Jobs
wp cron event delete 'bp_activity_akismet_delete_old_metadata'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_activity_comment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_activity_comment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_activity_comment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_activity_comment_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_component_slugs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_component_slugs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_component_slugs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_component_slugs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bp_last_posted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bp_last_posted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bp_last_posted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bp_last_posted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_type_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_type_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_type_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_type_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_email_preheader'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_email_preheader'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_email_preheader'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_email_preheader'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_export_file_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_export_file_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_export_file_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_export_file_name'"
