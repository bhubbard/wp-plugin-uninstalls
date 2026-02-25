#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'immowp_estimation_settings'
wp option delete 'immowp_estimation_notice_dismissed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_immowp_estimation_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_immowp_estimation_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_immowp_estimation_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_immowp_estimation_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_immowp_estimation_submission'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_immowp_estimation_submission'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_immowp_estimation_submission'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_immowp_estimation_submission'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_immowp_estimation_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_immowp_estimation_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_immowp_estimation_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_immowp_estimation_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_immowp_estimation_public_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_immowp_estimation_public_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_immowp_estimation_public_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_immowp_estimation_public_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_immowp_estimation_admin_note'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_immowp_estimation_admin_note'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_immowp_estimation_admin_note'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_immowp_estimation_admin_note'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_immowp_estimation_payload'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_immowp_estimation_payload'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_immowp_estimation_payload'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_immowp_estimation_payload'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_immowp_estimation_remote_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_immowp_estimation_remote_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_immowp_estimation_remote_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_immowp_estimation_remote_id'"
