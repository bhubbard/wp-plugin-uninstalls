#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cpc_bms_nb_bmsearch'
wp option delete 'cpc_bms_admin_options'
wp option delete 'cpc_bms_admin_text_mod'
wp option delete 'cpc_bms_advanced_admin_options'
wp option delete 'sidebars_widgets'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
