#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'leaderboard_options'
wp option delete 'leaderboard_num_top_shoppers'
wp option delete 'leadfowo_prize_email_subject'
wp option delete 'leadfowo_prize_email_body'

# Delete Transients
wp transient delete 'leadfowo_monthly_duplicate_error'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leadfowo_month'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leadfowo_month'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leadfowo_month'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leadfowo_month'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leadfowo_year'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leadfowo_year'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leadfowo_year'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leadfowo_year'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_leadfowo_prizes_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_leadfowo_prizes_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_leadfowo_prizes_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_leadfowo_prizes_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'billing_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'billing_phone'"
