#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_post_submission_setup_flag'
wp option delete '_easy_post_submission_setup_flag'
wp option delete 'easy_post_submission_post_manager_settings'
wp option delete 'easy_post_submission_recaptcha_migrated'
wp option delete 'easy_post_submission_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rbsm_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rbsm_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rbsm_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rbsm_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rbsm_author_info'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rbsm_author_info'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rbsm_author_info'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rbsm_author_info'"
