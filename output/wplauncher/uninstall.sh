#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_currency'"
wp option delete 'wplauncher_company_name'
wp option delete 'wplauncher_logo'
wp option delete 'wplauncher_currency'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cost'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cost'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cost'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cost'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_budget'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_budget'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_budget'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_budget'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_hourly_estimate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_hourly_estimate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_hourly_estimate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_hourly_estimate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_cost_estimate'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_cost_estimate'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_cost_estimate'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_cost_estimate'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_response'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_response'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_response'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_response'"
