#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'landing_page_id'
wp option delete 'email_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'validity_duration'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'validity_duration'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'validity_duration'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'validity_duration'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'tel'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'tel'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'tel'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'tel'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'Mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'Mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'Mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'Mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'has_to_be_activated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'has_to_be_activated'"
