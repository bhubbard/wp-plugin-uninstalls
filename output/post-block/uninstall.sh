#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FancyPostPRO_lic_Key'
wp option delete 'FancyPostPRO_lic_email'
wp option delete '_fpblock_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_fpblock_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_fpblock_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_fpblock_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_fpblock_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'post_views_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_frhd_fp_post_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_frhd_fp_post_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_frhd_fp_post_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_frhd_fp_post_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_frhd_fp_user_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_frhd_fp_user_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_frhd_fp_user_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_frhd_fp_user_options'"
