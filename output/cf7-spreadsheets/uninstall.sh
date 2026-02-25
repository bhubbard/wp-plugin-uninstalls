#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'CF7spreadsheets_api_file'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CF7spreadsheets_option_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CF7spreadsheets_option_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CF7spreadsheets_option_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CF7spreadsheets_option_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CF7spreadsheets_option_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CF7spreadsheets_option_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CF7spreadsheets_option_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CF7spreadsheets_option_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CF7spreadsheets_option_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CF7spreadsheets_option_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CF7spreadsheets_option_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CF7spreadsheets_option_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CF7spreadsheets_option_mail'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CF7spreadsheets_option_mail'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CF7spreadsheets_option_mail'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CF7spreadsheets_option_mail'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CF7spreadsheets_output_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CF7spreadsheets_output_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CF7spreadsheets_output_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CF7spreadsheets_output_tags'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'CF7spreadsheets_output_types'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'CF7spreadsheets_output_types'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'CF7spreadsheets_output_types'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'CF7spreadsheets_output_types'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_form'"
