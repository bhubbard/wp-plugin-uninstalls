#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp transient delete 'gravityforms_cardconnect_api_status'
wp transient delete 'action_scheduler_admin_notice'
wp transient delete 'as_comment_count'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gf_cardconnect_sunset_warning_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gf_cardconnect_sunset_warning_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gf_cardconnect_sunset_warning_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gf_cardconnect_sunset_warning_dismissed'"
