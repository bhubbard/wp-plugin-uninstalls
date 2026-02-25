#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easyaiseo_api_key'
wp option delete 'easyaiseo_model'
wp option delete 'fs_debug_mode'
wp option delete '_transient_timeout_fs_snooze_period'
wp option delete '_site_transient_timeout_fs_snooze_period'
wp option delete 'active_sitewide_plugins'
wp option delete 'fs_storage_logger'
wp option delete 'fs_active_plugins'

# Delete Transients
wp transient delete 'fs_snooze_period'
wp transient delete 'update_plugins'
wp transient delete '_fs_api_connection_retry_counter'
wp transient delete 'update_themes'

# Clear Cron Jobs
wp cron event delete 'fs_debug_turn_off_logging_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'easyaiseo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'easyaiseo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'easyaiseo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'easyaiseo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easyaibloggen_preferred_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easyaibloggen_preferred_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easyaibloggen_preferred_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easyaibloggen_preferred_keyword'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ea_seo_meta_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ea_seo_meta_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ea_seo_meta_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ea_seo_meta_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ea_seo_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ea_seo_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ea_seo_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ea_seo_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ea_seo_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ea_seo_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ea_seo_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ea_seo_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ea_seo_og_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ea_seo_og_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ea_seo_og_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ea_seo_og_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_easyaiseo_focus_keyword'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_easyaiseo_focus_keyword'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_easyaiseo_focus_keyword'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_easyaiseo_focus_keyword'"
