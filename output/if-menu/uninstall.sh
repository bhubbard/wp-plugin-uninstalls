#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'if-menu-admin'
wp option delete 'if-menu-peak'
wp option delete 'if-menu-license-key'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_if-menu-nonce-%' OR option_name LIKE '_site_transient_if-menu-nonce-%'"
wp transient delete 'if-menu-plan'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ip-country-code-%' OR option_name LIKE '_site_transient_ip-country-code-%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'if_menu_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'if_menu_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'if_menu_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'if_menu_enable'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'if_menu_condition_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'if_menu_condition_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'if_menu_condition_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'if_menu_condition_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'if_menu_condition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'if_menu_condition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'if_menu_condition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'if_menu_condition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'if_menu_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'if_menu_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'if_menu_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'if_menu_options'"
