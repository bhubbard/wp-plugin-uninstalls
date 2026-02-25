#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'widget_block'
wp option delete 'drwidgetsblocks-widget'
wp option delete 'dr_widgets_blocks_google_fonts'
wp option delete 'drwb_block_settings'
wp option delete 'drwb_widget_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'delisho_pro_license'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient__drwidgetsblocks_preview_%' OR option_name LIKE '_site_transient__drwidgetsblocks_preview_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drwidgetsblocks_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drwidgetsblocks_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drwidgetsblocks_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drwidgetsblocks_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_drwidgetsblocks_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_drwidgetsblocks_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_drwidgetsblocks_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_drwidgetsblocks_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dr_taxonomy_metas'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dr_taxonomy_metas'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dr_taxonomy_metas'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dr_taxonomy_metas'"
