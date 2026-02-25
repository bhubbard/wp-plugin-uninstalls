#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'usgr_ug_time'
wp option delete 'usgr_ug_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_usgr_block_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_usgr_block_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_usgr_block_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_usgr_block_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_usgr_block_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_usgr_block_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_usgr_block_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_usgr_block_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usgr_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usgr_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usgr_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usgr_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usgr_designation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usgr_designation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usgr_designation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usgr_designation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usgr_job_role'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usgr_job_role'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usgr_job_role'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usgr_job_role'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'usgr_custom_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'usgr_custom_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'usgr_custom_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'usgr_custom_url'"
