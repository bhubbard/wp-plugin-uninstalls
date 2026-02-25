#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'socipu_linkedin_access_token'
wp option delete 'socipu_available_profiles'
wp option delete 'socipu_linkedin_target_profile'
wp option delete 'socipu_license_status'
wp option delete 'socipu_license_data'
wp option delete 'social_publisher_license_key'
wp option delete 'social_publisher_openai_key'
wp option delete 'openai_key_status'
wp option delete 'socipu_debug_validation_ran'
wp option delete 'socipu_license_expiry'
wp option delete 'socipu_license_product_id'
wp option delete 'socipu_license_product_name'
wp option delete 'socipu_license_order_id'
wp option delete 'socipu_license_email'
wp option delete 'socipu_license_billing_type'
wp option delete 'socipu_license_plan'
wp option delete 'socipu_license_api_version'
wp option delete 'socipu_linkedin_token'
wp option delete 'socipu_global_fallback_token'
wp option delete 'social_publisher_available_profiles'
wp option delete 'socipu_openai_key'

# Delete Transients
wp transient delete 'socipu_license_validate_throttle'
wp transient delete 'socipu_license_validation_running'
wp transient delete 'socipu_token_check_running'
wp transient delete 'socipu_license_recently_released'
wp transient delete 'socipu_license_data'
wp transient delete 'socipu_linkedin_token_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_socipu_linkedin_post_success_%' OR option_name LIKE '_site_transient_socipu_linkedin_post_success_%'"

# Clear Cron Jobs
wp cron event delete 'socipu_post_to_linkedin_event'
wp cron event delete 'post_to_linkedin_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_access_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_access_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_access_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_access_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_expires'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_expires'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_expires'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_expires'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_refresh_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_refresh_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_refresh_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_refresh_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'socipu_linkedin_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'socipu_linkedin_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'socipu_linkedin_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'socipu_linkedin_token'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_enable_backlink'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_enable_backlink'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_enable_backlink'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_enable_backlink'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin_share_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin_share_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin_share_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin_share_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_posted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_posted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_posted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_posted'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'socipu_linkedin_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'socipu_linkedin_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'socipu_linkedin_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'socipu_linkedin_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'socipu_linkedin_post_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'socipu_linkedin_post_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'socipu_linkedin_post_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'socipu_linkedin_post_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_force_republish'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_force_republish'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_force_republish'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_force_republish'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_share'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_share'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_share'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_share'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_profile_urn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_profile_urn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_profile_urn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_profile_urn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_last_published_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_last_published_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_last_published_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_last_published_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_linkedin_share_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_linkedin_share_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_linkedin_share_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_linkedin_share_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'socipu_linkedin_published_at'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'socipu_linkedin_published_at'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'socipu_linkedin_published_at'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'socipu_linkedin_published_at'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socipu_linkedin_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socipu_linkedin_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socipu_linkedin_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socipu_linkedin_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'linkedin_repost_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'linkedin_repost_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'linkedin_repost_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'linkedin_repost_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socipu_suppress_immediate_post'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socipu_suppress_immediate_post'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socipu_suppress_immediate_post'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socipu_suppress_immediate_post'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_socipu_linkedin_share_success'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_socipu_linkedin_share_success'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_socipu_linkedin_share_success'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_socipu_linkedin_share_success'"
