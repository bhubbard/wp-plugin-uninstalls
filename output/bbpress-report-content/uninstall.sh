#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_report_user_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_report_user_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_report_user_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_report_user_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_report_meta_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_report_meta_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_report_meta_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_report_meta_status'"
