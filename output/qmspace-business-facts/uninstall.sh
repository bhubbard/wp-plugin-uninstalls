#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qmsbf_wizard_completed'
wp option delete 'qmsbf_flush_rewrite_rules'
wp option delete 'qmsbf_business'
wp option delete 'qmsbf_address'
wp option delete 'qmsbf_settings'
wp option delete 'qmsbf_last_updated'
wp option delete 'qmsbf_display_fields'
wp option delete 'qmsbf_page_id'
wp option delete 'qmsbf_hours'
wp option delete 'qmsbf_social'
wp option delete 'qmsbf_leads'
wp option delete 'qmsbf_analytics'
wp option delete 'qmsbf_license_key'
wp option delete 'qmsbf_license_status'
wp option delete 'qmsbf_license_expires'
wp option delete 'qmsbf_activation_id'
wp option delete 'qmsbf_license_fingerprint'

# Delete Transients
wp transient delete 'qmsbf_license_status_cache'
wp transient delete 'qmsbf_page_exists_notice'
wp transient delete 'qmsbf_json_cache'
wp transient delete 'qmsbf_business_data'

# Clear Cron Jobs
wp cron event delete 'qmsbf_deferred_activation'

