#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'zcvideo_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcvideo_public'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcvideo_public'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcvideo_public'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcvideo_public'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcvideo_formats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcvideo_formats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcvideo_formats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcvideo_formats'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcvideo_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcvideo_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcvideo_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcvideo_status'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcvideo_input'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcvideo_input'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcvideo_input'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcvideo_input'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_zcvideo_job_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_zcvideo_job_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_zcvideo_job_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_zcvideo_job_id'"
