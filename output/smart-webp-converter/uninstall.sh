#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'firexcore_webp_quality'
wp option delete 'firexcore_webp_replace_original'
wp option delete 'firexcore_webp_strip_metadata'
wp option delete 'firexcore_webp_lossless'
wp option delete 'firexcore_webp_lazy_loading'
wp option delete 'firexcore_webp_seo_optimization'

# Clear Cron Jobs
wp cron event delete 'firexcore_webp_cleanup_temp'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
