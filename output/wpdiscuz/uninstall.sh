#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpdiscuz_form_content_type_rel'
wp option delete 'wpdiscuz_form_post_rel'
wp option delete 'anr_admin_options'
wp option delete 'ic-wordpress-settings'
wp option delete 'wpdiscuz_recaptcha'
wp option delete 'wc_options'
wp option delete 'woocommerce_review_rating_verification_required'
wp option delete 'wc_plugin_version'
wp option delete 'wpdiscuz-addon-note-dismissed'
wp option delete 'wpdiscuz-tip-note-dismissed'
wp option delete 'wpd_checked_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_redpoint'"
wp option delete 'wpd_admin_notices'
wp option delete 'disallowed_keys'
wp option delete 'rewrite_rules'
wp option delete 'fastvelocity_min_ignore'

# Delete Transients
wp transient delete 'wpdiscuz_addons_check'

# Clear Cron Jobs
wp cron event delete 'wpdiscuz_gravatars_cache_add'
wp cron event delete 'wpdiscuz_gravatars_cache_delete'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_review_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_rating_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_average_rating'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpdiscuz_form_general_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpdiscuz_form_general_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpdiscuz_form_general_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpdiscuz_form_general_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attached_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wmu_comment_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wmu_comment_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wmu_comment_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wmu_comment_id'"
