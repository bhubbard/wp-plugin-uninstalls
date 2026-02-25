#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_civs_version'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_civs_term_color_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_civs_term_color_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_civs_term_color_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_civs_term_color_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_civs_term_label_label'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_civs_term_label_label'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_civs_term_label_label'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_civs_term_label_label'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'alg_wc_civs_term_image_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'alg_wc_civs_term_image_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'alg_wc_civs_term_image_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'alg_wc_civs_term_image_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
