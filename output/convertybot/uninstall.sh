#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'convertybot_options'
wp option delete 'convertybot_version'
wp option delete 'convertybot_chatbot_version'
wp option delete 'convertybot_cookie_policy_url'
wp option delete 'convertybot_coupon_notify_queue'
wp option delete 'convertybot_last_sync'
wp option delete 'convertybot_backend_url'
wp option delete 'convertybot_gdpr_enabled'
wp option delete 'convertybot_ccpa_enabled'
wp option delete 'convertybot_respect_dnt'
wp option delete 'convertybot_cookieless'
wp option delete 'convertybot_respect_consent'
wp option delete 'convertybot_anonymize_ip'
wp option delete 'convertybot_privacy_policy_version'
wp option delete 'convertybot_site_id'

# Clear Cron Jobs
wp cron event delete 'convertybot_sync_products'
wp cron event delete 'convertybot_cleanup_sessions'
wp cron event delete 'convertybot_daily_analytics'
wp cron event delete 'convertybot_cleanup_coupons'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'convertybot_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'convertybot_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'convertybot_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'convertybot_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'convertybot_consent_details'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'convertybot_consent_details'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'convertybot_consent_details'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'convertybot_consent_details'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'convertybot_consent_timestamp'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'convertybot_consent_timestamp'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'convertybot_consent_timestamp'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'convertybot_consent_timestamp'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'convertybot_functional_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'convertybot_functional_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'convertybot_functional_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'convertybot_functional_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'convertybot_analytics_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'convertybot_analytics_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'convertybot_analytics_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'convertybot_analytics_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'convertybot_marketing_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'convertybot_marketing_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'convertybot_marketing_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'convertybot_marketing_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'convertybot_personalization_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'convertybot_personalization_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'convertybot_personalization_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'convertybot_personalization_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'convertybot_advertising_consent'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'convertybot_advertising_consent'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'convertybot_advertising_consent'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'convertybot_advertising_consent'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'verified'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convertybot_guest_migrated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convertybot_guest_migrated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convertybot_guest_migrated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convertybot_guest_migrated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_convertybot_migration_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_convertybot_migration_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_convertybot_migration_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_convertybot_migration_date'"
