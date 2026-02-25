#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dmca_badge_settings'
wp option delete 'imperative_activation_error'

# Delete Transients
wp transient delete 'dmca_login_token'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dmca_account_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dmca_account_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dmca_account_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dmca_account_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dmca_submission_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dmca_submission_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dmca_submission_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dmca_submission_status'"
