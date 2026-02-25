#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_blockart_version'
wp option delete '_blockart_activation_redirect'
wp option delete '_blockart_activation_time'
wp option delete '_blockart_blocks_css'
wp option delete 'widget_block'
wp option delete '_blockart_global_styles_generated_timestamp'
wp option delete '_blockart_settings'
wp option delete '_blockart_widget_css'
wp option delete '_blockart_dynamic_css_print_method'
wp option delete 'downloaded_font_files'

# Delete Transients
wp transient delete '_blockart_library_data'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%]' OR option_name LIKE '_site_transient_%]'"
wp transient delete '_blockart_media_items'

# Clear Cron Jobs
wp cron event delete 'blockart_delete_fonts_folder'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blockart_blocks_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blockart_blocks_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blockart_blocks_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blockart_blocks_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_blockart_review'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_blockart_review'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_blockart_review'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_blockart_review'"
