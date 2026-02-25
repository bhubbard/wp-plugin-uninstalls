#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ptam_options'
wp option delete 'custom-typekit-fonts'
wp option delete 'wpseo_titles'
wp option delete 'post-type-archive-mapping-404'
wp option delete 'ptam_error_message'
wp option delete 'post-type-archive-mapping'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_post_type_mapped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_post_type_mapped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_post_type_mapped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_post_type_mapped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_term_mapped'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_term_mapped'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_term_mapped'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_term_mapped'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dlx_app_nag_dismissed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dlx_app_nag_dismissed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dlx_app_nag_dismissed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dlx_app_nag_dismissed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_term_archive_mapping'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_term_archive_mapping'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_term_archive_mapping'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_term_archive_mapping'"
