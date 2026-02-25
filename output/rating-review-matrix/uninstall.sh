#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rmatrix_force_user_login'
wp option delete 'rmatrix_allow_user_comments'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_allowed'"
wp option delete 'rmatrix_allow_ajax_login'
wp option delete 'name'
wp option delete 'rmatrix_version'
wp option delete 'rmatrix_build'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'associated_matrix_id_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'associated_matrix_id_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'associated_matrix_id_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'associated_matrix_id_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'associated_matrix_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'associated_matrix_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'associated_matrix_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'associated_matrix_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'matrix_count'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'matrix_count'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'matrix_count'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'matrix_count'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_title'"
