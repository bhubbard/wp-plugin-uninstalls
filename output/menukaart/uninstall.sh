#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'menukaart_plugin_settings_have_changed'
wp option delete 'menukaart_general_settings'
wp option delete 'menukaart_styles_settings'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mk_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mk_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mk_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mk_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mk_wc_prod'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mk_wc_prod'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mk_wc_prod'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mk_wc_prod'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mk_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mk_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mk_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mk_status'"
