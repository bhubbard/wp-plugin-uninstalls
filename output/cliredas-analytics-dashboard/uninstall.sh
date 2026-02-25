#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'cliredas_report_last_7_days'
wp transient delete 'cliredas_report_last_30_days'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cliredas_ga4_oauth_state_token'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cliredas_ga4_oauth_state_token'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cliredas_ga4_oauth_state_token'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cliredas_ga4_oauth_state_token'"
