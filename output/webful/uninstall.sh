#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'webful_show_consent_notice'
wp option delete 'webful_gdpr_consent'
wp option delete 'webful_show_badge'
wp option delete 'webful_tracking_enabled'
wp option delete 'webful_check_quota'
wp option delete 'webful_exclude_admins'
wp option delete 'webful_excluded_pages'
wp option delete 'webful_gdpr_consent_date'
wp option delete 'webful_site_id'
wp option delete 'webful_api_key'
wp option delete 'webful_site_url'
wp option delete 'webful_user_email'
wp option delete 'webful_version'
wp option delete 'webful_activated_at'

# Delete Transients
wp transient delete 'webful_quota_check'

