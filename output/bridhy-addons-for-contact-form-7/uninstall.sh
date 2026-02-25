#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cf7vb_installed'
wp option delete 'cf7vb_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_widgets'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_styles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_generated_css'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7vb_app_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7vb_app_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7vb_app_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7vb_app_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7vb_generated_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7vb_generated_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7vb_generated_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7vb_generated_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cf7vb_redirect_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cf7vb_redirect_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cf7vb_redirect_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cf7vb_redirect_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cf7vb_redirect_enable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cf7vb_redirect_enable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cf7vb_redirect_enable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cf7vb_redirect_enable'"
