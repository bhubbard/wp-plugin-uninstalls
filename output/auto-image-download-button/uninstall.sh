#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cdb_button_text_color'
wp option delete 'cdb_button_color'
wp option delete 'cdb_button_size'
wp option delete 'cdb_button_border'
wp option delete 'cdb_button_radius'
wp option delete 'cdb_button_padding'
wp option delete 'cdb_button_margin'
wp option delete 'cdb_button_text'
wp option delete 'cdb_button_hover_color'
wp option delete 'cdb_post_types'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cdb_enable_download_button'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cdb_enable_download_button'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cdb_enable_download_button'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cdb_enable_download_button'"
