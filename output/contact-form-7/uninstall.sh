#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcf7'
wp option delete 'disallowed_keys'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'wpcf7_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'wpcf7_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'wpcf7_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'wpcf7_hide_welcome_panel_on'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_config_validation'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_config_validation'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_config_validation'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_config_validation'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_locale'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_hash'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_old_cf7_unit_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_old_cf7_unit_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_old_cf7_unit_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_old_cf7_unit_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_config_errors'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_config_errors'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_config_errors'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_config_errors'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_flamingo'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_flamingo'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_flamingo'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_flamingo'"
