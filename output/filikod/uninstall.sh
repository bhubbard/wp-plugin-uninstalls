#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'filikod_auto_resize_enabled'
wp option delete 'filikod_max_image_width'
wp option delete 'filikod_auto_alt'
wp option delete 'filikod_remove_title'
wp option delete 'filikod_clean_alt_special_chars'
wp option delete 'filikod_flush_rewrite_rules'
wp option delete 'filikod_enabled_file_types'
wp option delete 'filikod_total_saved_bytes'

# Delete Transients
wp transient delete 'filikod_alt_audit'

# Clear Cron Jobs
wp cron event delete 'filikod_cron_hook'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_metadata'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'filikod_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'filikod_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'filikod_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'filikod_'"
