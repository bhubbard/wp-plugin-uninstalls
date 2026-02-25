#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'dc_menu_html_index'
wp option delete 'dc_menu_nonces_index'
wp option delete 'dc_mc_nocache_menus'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_dc_menu_html_%' OR option_name LIKE '_site_transient_dc_menu_html_%'"

