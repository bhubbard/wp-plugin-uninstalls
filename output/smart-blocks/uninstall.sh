#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sb_general_settings'
wp option delete 'downloaded_font_files'
wp option delete 'sb_setup_done'
wp option delete 'sb_blocks'
wp option delete 'smart_blocks_first_activation'
wp option delete 'smart_blocks_dismissed_notices'

# Clear Cron Jobs
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_smart_blocks_image_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_smart_blocks_image_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_smart_blocks_image_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_smart_blocks_image_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'smart_blocks_dismissed_notices'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'smart_blocks_dismissed_notices'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'smart_blocks_dismissed_notices'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'smart_blocks_dismissed_notices'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sb_editor_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sb_editor_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sb_editor_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sb_editor_width'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
