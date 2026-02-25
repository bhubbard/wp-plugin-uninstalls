#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_pn_wpml_use_default_language_product_id'
wp option delete 'alg_wc_pn_public_logged_in_user_only'
wp option delete 'alg_wc_pn_private_wp_editor'
wp option delete 'alg_wc_pn_public_wp_editor'
wp option delete 'alg_wc_product_notes_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_tab_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_tab_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_tab_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_tab_title'"
