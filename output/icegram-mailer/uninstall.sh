#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'icegram_mailer_ess_data'
wp option delete 'icegram_mailer_opted_for_sending_service'
wp option delete 'icegram_mailer_status'
wp option delete 'icegram_mailer_onboarding_complete'
wp option delete 'icegram_mailer_mailer_settings'
wp option delete 'icegram_mailer_branding_enabled'
wp option delete 'icegram_mailer_test_mailbox_user'
wp option delete 'icegram_mailer_db_version'
wp option delete 'active_sitewide_plugins'

# Delete Transients
wp transient delete 'icegram_mailer_installing'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_time'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_time'"
