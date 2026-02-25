#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'downloaded_font_files'
wp option delete 'fresh_site'
wp option delete 'twentig-options'
wp option delete 'twentig_global_spacing'

# Delete Transients
wp transient delete '_twentig_activation_redirect'

# Clear Cron Jobs
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
