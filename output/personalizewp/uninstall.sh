#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pwp_pending_onboarding'
wp option delete 'pwp_admin_onboarding_dismissed'
wp option delete 'personalizewp_onboarding'
wp option delete 'pwp_onboarding'
wp option delete 'pwp_admin_notices'
wp option delete 'pwp_flash_messages'
wp option delete 'personalizewp_editor_role_values'
wp option delete 'dxp_newsletter_signup'
wp option delete 'pwp_admin_dashboard_message'
wp option delete 'pwp_admin_onboarding_message'
wp option delete '_pwp_pro_db'
wp option delete 'personalizewp_license_key'
wp option delete 'personalizewp_license'
wp option delete 'personalizewp_license_status'
wp option delete 'personalisewp_license_notice'
wp option delete 'pwp_editor_role_values'

# Delete Transients
wp transient delete 'pwp_installing'

# Clear Cron Jobs
wp cron event delete 'personalisewp_daily_scheduled_events'
wp cron event delete 'pwp_weekly_scheduled_events'
wp cron event delete 'personalisewp_weekly_scheduled_events'
wp cron event delete 'personalizewp_daily_purge_expired_activity_logs'
wp cron event delete 'personalizewp_daily_purge_expired_anonymous_profiles'
wp cron event delete 'personalizewp_daily_purge_expired_known_profiles'
wp cron event delete 'personalizewp_weekly_scheduled_events'
wp cron event delete 'personalizewp_daily_cleanup_export_files'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_export_contact_ids'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_export_contact_ids'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_export_contact_ids'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_export_contact_ids'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'edit_pwp_export_requests_per_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'edit_pwp_export_requests_per_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'edit_pwp_export_requests_per_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'edit_pwp_export_requests_per_page'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'pwp_newsletter_signup'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'pwp_newsletter_signup'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'pwp_newsletter_signup'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'pwp_newsletter_signup'"
