#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'starter_sites_settings'
wp option delete 'wpmapblock_ablocks_install_notice_hidden'
wp option delete 'gutena_forms_dismiss_notices'
wp option delete 'block_visibility_settings'
wp option delete 'starter_sites_activated'
wp option delete 'starter_sites_do_activation_redirect'

# Delete Transients
wp transient delete 'starter_sites_demo_list'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starter_sites_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starter_sites_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starter_sites_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starter_sites_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'eternal_admin_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'eternal_admin_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'eternal_admin_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'eternal_admin_notice_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'acai_admin_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'acai_admin_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'acai_admin_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'acai_admin_notice_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starter_sites_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starter_sites_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starter_sites_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starter_sites_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starter_sites_review_notice_dismiss'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starter_sites_review_notice_dismiss'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starter_sites_review_notice_dismiss'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starter_sites_review_notice_dismiss'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'starter_sites_admin_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'starter_sites_admin_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'starter_sites_admin_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'starter_sites_admin_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starter_sites_admin_fullpage'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starter_sites_admin_fullpage'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starter_sites_admin_fullpage'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starter_sites_admin_fullpage'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starter_sites_admin_darkmode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starter_sites_admin_darkmode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starter_sites_admin_darkmode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starter_sites_admin_darkmode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_font_face_file'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_font_face_file'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_font_face_file'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_font_face_file'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_product_image_gallery'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starter_sites_import_parent_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starter_sites_import_parent_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starter_sites_import_parent_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starter_sites_import_parent_theme'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'starter_sites_import_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'starter_sites_import_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'starter_sites_import_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'starter_sites_import_title'"
