#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'grigora_kit_settings'
wp option delete 'site_logo'
wp option delete 'grigora_blocks_typography'
wp option delete 'grigora_st_logo_id'
wp option delete 'grigora_st_templates_meta'
wp option delete 'downloaded_font_files'

# Delete Transients
wp transient delete 'grigora_st_templates_meta_updated_flag'

# Clear Cron Jobs
wp cron event delete 'delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_grigora-toc-disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_grigora-toc-disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_grigora-toc-disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_grigora-toc-disable'"
