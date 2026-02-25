#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_multusre_email_new_user'
wp option delete '_multusre_email_existing_user'
wp option delete '_multusre_debug_logging'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_multusre_user_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_multusre_user_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_multusre_user_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_multusre_user_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_multusre_flag_new_user'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_multusre_flag_new_user'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_multusre_flag_new_user'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_multusre_flag_new_user'"
