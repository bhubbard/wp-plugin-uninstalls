#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'emw_mom_allowed_statuses'
wp option delete 'emw_mom_email_subject'
wp option delete 'emw_mom_admin_email'
wp option delete 'emw_mom_cc_email'
wp option delete 'emw_mom_email_template'
wp option delete 'emw_mom_criteria_settings'
wp option delete 'emw_mom_rest_api_enabled'
wp option delete 'emw_mom_rest_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'multipleorders'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'multipleorders'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'multipleorders'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'multipleorders'"
