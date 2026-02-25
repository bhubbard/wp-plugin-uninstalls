#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ladderseop_schema_type'

# Clear Cron Jobs
wp cron event delete 'ladderseo_generate_content'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ladderseo_hide_from_result'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ladderseo_hide_from_result'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ladderseo_hide_from_result'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ladderseo_hide_from_result'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-schema'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-schema'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-schema'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-schema'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ladderseo_content_generation_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ladderseo_content_generation_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ladderseo_content_generation_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ladderseo_content_generation_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ladderseo_brief_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ladderseo_brief_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ladderseo_brief_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ladderseo_brief_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%-canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%-canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%-canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%-canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
