#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'galactic_webp_quality'
wp option delete 'galactic_webp_delete_original'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'galactic_hide_donation_notice'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'galactic_hide_donation_notice'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'galactic_hide_donation_notice'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'galactic_hide_donation_notice'"
