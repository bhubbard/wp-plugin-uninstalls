#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'p_cgal1ery_count_uploads'
wp option delete 'p_cgal1ery_reg_code'
wp option delete 'p_c1_k_g_r_9'
wp option delete 'p_cgal1ery_uploadscounter_reminder'
wp option delete 'p_cgal1ery_reminder_time'
wp option delete 'p_cgal1ery_count_users'
wp option delete 'p_cgal1ery_db_version'
wp option delete 'p_cgal1ery_install_date'
wp option delete 'CgEntriesOwnSlugName'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'CgEntriesOwnSlugName%'"
wp option delete 'CgEntriesOwnSlugNameGalleries'
wp option delete 'CgEntriesOwnSlugNameGalleriesUser'
wp option delete 'CgEntriesOwnSlugNameGalleriesNoVoting'
wp option delete 'CgEntriesOwnSlugNameGalleriesWinner'
wp option delete 'CgEntriesOwnSlugNameGalleriesEcommerce'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
