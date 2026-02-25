#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'echodash_endpoint'
wp option delete 'echodash_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bbp_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'echodash_bp_profile_complete'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'echodash_bp_profile_complete'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'echodash_bp_profile_complete'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'echodash_bp_profile_complete'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'echodash_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'echodash_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'echodash_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'echodash_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gamipress_congratulations_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gamipress_congratulations_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gamipress_congratulations_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gamipress_congratulations_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gamipress_points_to_unlock'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gamipress_points_to_unlock'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gamipress_points_to_unlock'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gamipress_points_to_unlock'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gamipress_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gamipress_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gamipress_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gamipress_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gamipress_earned_by'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gamipress_earned_by'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gamipress_earned_by'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gamipress_earned_by'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_new_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_new_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_new_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_new_points'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_points'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_points'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_points'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_points'"
