#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'amp_blocks_editor_width'
wp option delete 'amp_blocks_config_blocks'
wp option delete 'amp_blocks_settings_blocks'

# Delete Transients
wp transient delete 'amp_blocks_design_library'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'amp_blocks_editor_width'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'amp_blocks_editor_width'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'amp_blocks_editor_width'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'amp_blocks_editor_width'"
