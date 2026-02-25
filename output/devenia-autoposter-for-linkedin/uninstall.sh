#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dlap_settings'
wp option delete 'dlap_access_token'
wp option delete 'dlap_token_expires'
wp option delete 'dlap_linkedin_api_version'
wp option delete 'dlap_last_expiry_email'
wp option delete 'dlap_organizations'
wp option delete 'dlap_gallery_rotation_index'
wp option delete 'dlap_member_id'

# Delete Transients
wp transient delete 'dlap_test_error'
wp transient delete 'dlap_last_error'

# Clear Cron Jobs
wp cron event delete 'dlap_daily_check'
wp cron event delete 'dlap_process_post_share'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlap_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlap_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlap_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlap_disable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlap_shared'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlap_shared'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlap_shared'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlap_shared'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlap_share_queued'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlap_share_queued'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlap_share_queued'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlap_share_queued'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlap_error'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlap_error'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlap_error'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlap_error'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlap_share_attempt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlap_share_attempt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlap_share_attempt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlap_share_attempt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlap_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlap_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlap_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlap_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlap_error_personal'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlap_error_personal'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlap_error_personal'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlap_error_personal'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_dlap_error_organization'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_dlap_error_organization'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_dlap_error_organization'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_dlap_error_organization'"
