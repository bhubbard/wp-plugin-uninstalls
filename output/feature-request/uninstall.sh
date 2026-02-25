#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avfr_version'
wp option delete 'avfr_installed_before'
wp option delete 'avfr_post_registered'
wp option delete 'avfr_tax_option_moved'
wp option delete 'avfr_settings_groups'
wp option delete 'feature_request_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp option delete 'avfr_settings_main'
wp option delete 'avfr_settings_features'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avfr_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avfr_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avfr_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avfr_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avfr_total_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avfr_total_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avfr_total_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avfr_total_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avfr_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avfr_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avfr_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avfr_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avfr_max_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avfr_max_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avfr_max_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avfr_max_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avfr_total_votes'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avfr_total_votes'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avfr_total_votes'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avfr_total_votes'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avfr_comments_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avfr_comments_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avfr_comments_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avfr_comments_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'avfr_new_disabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'avfr_new_disabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'avfr_new_disabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'avfr_new_disabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_avfr_author_email'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_avfr_author_email'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_avfr_author_email'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_avfr_author_email'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_has_voted'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_has_voted'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_has_voted'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_has_voted'"
