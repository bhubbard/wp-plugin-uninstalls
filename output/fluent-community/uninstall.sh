#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_bp_fcom_group_maps'
wp option delete '_bp_fcom_last_post_id'
wp option delete '_bp_fcom_last_user_id'
wp option delete '_bp_fcom_last_migrated_member_id'
wp option delete '_fcom_bp_migrations_status'
wp option delete 'fluentmail-settings'
wp option delete 'fluent_community_db_version'
wp option delete 'fluent_community_settings'
wp option delete 'rewrite_rules'
wp option delete '_fcom_crm_tagging'
wp option delete 'siteUrl'

# Delete Transients
wp transient delete 'action_scheduler_last_pastdue_actions_check'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bp_favorite_activities'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bp_favorite_activities'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bp_favorite_activities'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bp_favorite_activities'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcom_deactivated_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcom_deactivated_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcom_deactivated_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcom_deactivated_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcom_space_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcom_space_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcom_space_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcom_space_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcom_user_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcom_user_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcom_user_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcom_user_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcom_is_verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcom_is_verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcom_is_verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcom_is_verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fluent_cover_photo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fluent_cover_photo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fluent_cover_photo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fluent_cover_photo'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_fcom_last_digest_sent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_fcom_last_digest_sent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_fcom_last_digest_sent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_fcom_last_digest_sent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_new_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
