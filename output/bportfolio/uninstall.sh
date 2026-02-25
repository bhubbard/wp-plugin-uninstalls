#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bppf_plugin_do_activation_redirect'
wp option delete 'csf_demo_mode'
wp option delete '_bppfsettings_'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bppfshortcode_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bppfshortcode_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bppfshortcode_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bppfshortcode_'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_csf_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_bportfolio_'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_bportfolio_'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_bportfolio_'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_bportfolio_'"
