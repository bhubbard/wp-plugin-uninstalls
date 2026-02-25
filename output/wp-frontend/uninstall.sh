#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpfront_global_settings'
wp option delete 'sm_admin_notices'
wp option delete 'wpfrontend_pages'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfront_form_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfront_form_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfront_form_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfront_form_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfront_formdata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfront_formdata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfront_formdata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfront_formdata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfront_form_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfront_form_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfront_form_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfront_form_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpfront_submission_times'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpfront_submission_times'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpfront_submission_times'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpfront_submission_times'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpfrontend_submission_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpfrontend_submission_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpfrontend_submission_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpfrontend_submission_id'"
