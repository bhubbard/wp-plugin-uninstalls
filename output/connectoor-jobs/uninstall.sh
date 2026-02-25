#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_connectoor_jobs_branding_color'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_connectoor_jobs_begin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_connectoor_jobs_begin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_connectoor_jobs_begin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_connectoor_jobs_begin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_connectoor_jobs_deadline'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_connectoor_jobs_deadline'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_connectoor_jobs_deadline'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_connectoor_jobs_deadline'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_connectoor_jobs_begin_raw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_connectoor_jobs_begin_raw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_connectoor_jobs_begin_raw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_connectoor_jobs_begin_raw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_connectoor_jobs_deadline_raw'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_connectoor_jobs_deadline_raw'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_connectoor_jobs_deadline_raw'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_connectoor_jobs_deadline_raw'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_connectoor_jobs_deadline_visible'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_connectoor_jobs_deadline_visible'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_connectoor_jobs_deadline_visible'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_connectoor_jobs_deadline_visible'"
