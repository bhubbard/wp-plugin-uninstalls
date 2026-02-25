#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alt_text_pro_settings'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alt_text_pro_bulk_%' OR option_name LIKE '_site_transient_alt_text_pro_bulk_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alt_text_pro_success_%' OR option_name LIKE '_site_transient_alt_text_pro_success_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_alt_text_pro_error_%' OR option_name LIKE '_site_transient_alt_text_pro_error_%'"

# Clear Cron Jobs
wp cron event delete 'alt_text_pro_bulk_process_batch'
wp cron event delete 'alt_text_pro_cleanup'
wp cron event delete 'alt_text_pro_generate_background'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alt_text_pro_context'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alt_text_pro_context'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alt_text_pro_context'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alt_text_pro_context'"
