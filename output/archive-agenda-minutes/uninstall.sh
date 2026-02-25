#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'archagam_disable_bootstrap'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archagam_calendar'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archagam_calendar'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archagam_calendar'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archagam_calendar'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archagam_upload_option'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archagam_upload_option'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archagam_upload_option'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archagam_upload_option'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'archagam_select_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'archagam_select_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'archagam_select_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'archagam_select_type'"
