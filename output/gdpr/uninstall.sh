#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gdpr_requests'
wp option delete 'gdpr_cookie_popup_content'
wp option delete 'gdpr_consent_types'
wp option delete 'gdpr_disable_css'
wp option delete 'gdpr_enable_telemetry_tracker'
wp option delete 'gdpr_use_recaptcha'
wp option delete 'gdpr_recaptcha_site_key'
wp option delete 'gdpr_recaptcha_secret_key'
wp option delete 'gdpr_add_consent_checkboxes_registration'
wp option delete 'gdpr_add_consent_checkboxes_checkout'
wp option delete 'gdpr_refresh_after_preferences_update'
wp option delete 'gdpr_enable_privacy_bar'
wp option delete 'gdpr_display_cookie_categories_in_bar'
wp option delete 'gdpr_hide_from_bots'
wp option delete 'gdpr_reconsent_template'
wp option delete 'gdpr_policies_updated'
wp option delete 'gdpr_data_breach_initiated'
wp option delete 'gdpr_email_limit'
wp option delete 'gdpr_deletion_needs_review'
wp option delete 'gdpr_cookie_banner_content'
wp option delete 'gdpr_cookie_privacy_excerpt'

# Delete Transients
wp transient delete 'gdpr_updated'
wp transient delete 'settings_errors'

# Clear Cron Jobs
wp cron event delete 'clean_gdpr_data_breach_request'
wp cron event delete 'send_data_breach_emails'
wp cron event delete 'clean_gdpr_user_request_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_consents'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_consents'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_consents'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_consents'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gdpr_audit_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gdpr_audit_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gdpr_audit_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gdpr_audit_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'panels_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'panels_data'"
