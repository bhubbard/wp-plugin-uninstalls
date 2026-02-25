#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpconsent_admin_notices'
wp option delete 'ihaf_activated'
wp option delete 'wpconsent_activated'
wp option delete 'wpconsent_usage_tracking_config'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_timeout_%'"
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpconsent_alt_cache_%'"
wp option delete 'wpconsent_install'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpconsent_scanner_%'"
wp option delete 'wpconsent_scanner_data'
wp option delete 'wpconsent_connect_token'
wp option delete 'wpconsent_connect'
wp option delete 'wpconsent_settings'

# Delete Transients
wp transient delete 'wpconsent_needs_google_consent'
wp transient delete 'wpconsent_onboarding_redirect'
wp transient delete 'wpconsent_translation_strings'
wp transient delete 'wpconsent_needs_clarity_consent'
wp transient delete 'wpconsent_preference_cookies'
wp transient delete 'wpconsent_preference_slugs'
wp transient delete 'wpconsent_just_activated'
wp transient delete 'wpconsent_lite_just_activated'

# Clear Cron Jobs
wp cron event delete 'wpconsent_admin_notifications_update'
wp cron event delete 'wpconsent_usage_tracking_cron'
wp cron event delete 'wpconsent_auto_scanner'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpconsent_auto_added'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpconsent_auto_added'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpconsent_auto_added'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpconsent_auto_added'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpconsent_source_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpconsent_source_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpconsent_source_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpconsent_source_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpconsent_admin_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpconsent_admin_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpconsent_admin_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpconsent_admin_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpconsent_dismissed_review_request'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpconsent_dismissed_review_request'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpconsent_dismissed_review_request'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpconsent_dismissed_review_request'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpconsent_required'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpconsent_required'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpconsent_required'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpconsent_required'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpconsent_cookie_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpconsent_cookie_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpconsent_cookie_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpconsent_cookie_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpconsent_cookie_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpconsent_cookie_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpconsent_cookie_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpconsent_cookie_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpconsent_service_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpconsent_service_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpconsent_service_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpconsent_service_url'"
