#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'raise_donors_settings_option_name'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'raise_donors_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'raise_donors_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'raise_donors_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'raise_donors_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'raise_donors_format_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'raise_donors_format_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'raise_donors_format_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'raise_donors_format_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'raise_donors_format_full'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'raise_donors_format_full'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'raise_donors_format_full'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'raise_donors_format_full'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'raise_donors_format_form'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'raise_donors_format_form'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'raise_donors_format_form'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'raise_donors_format_form'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'raise_donors_campaign_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'raise_donors_campaign_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'raise_donors_campaign_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'raise_donors_campaign_id'"
