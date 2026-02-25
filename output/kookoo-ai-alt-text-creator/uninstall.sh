#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'aialtg_settings'

# Delete Transients
wp transient delete 'aialtg_stats'

# Clear Cron Jobs
wp cron event delete 'aialtg_cron_process_images'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aialtg_processed'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aialtg_processed'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aialtg_processed'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aialtg_processed'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aialtg_error_log'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aialtg_error_log'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aialtg_error_log'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aialtg_error_log'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aialtg_gen_date'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aialtg_gen_date'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aialtg_gen_date'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aialtg_gen_date'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aialtg_gen_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aialtg_gen_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aialtg_gen_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aialtg_gen_source'"
