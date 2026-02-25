#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpgo_tabular_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpgo_tabular_cpt_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpgo_tabular_cpt_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpgo_tabular_cpt_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpgo_tabular_cpt_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpgo_tabular_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpgo_tabular_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpgo_tabular_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpgo_tabular_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpgo_tabular_cpt_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpgo_tabular_cpt_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpgo_tabular_cpt_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpgo_tabular_cpt_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpgo_tabular_cpt_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpgo_tabular_cpt_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpgo_tabular_cpt_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpgo_tabular_cpt_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpgo_tabular_cpt_config_js'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpgo_tabular_cpt_config_js'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpgo_tabular_cpt_config_js'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpgo_tabular_cpt_config_js'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpgo_tabular_cpt_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpgo_tabular_cpt_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpgo_tabular_cpt_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpgo_tabular_cpt_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpgo_tabular_cpt_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpgo_tabular_cpt_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpgo_tabular_cpt_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpgo_tabular_cpt_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wpgo_tabular_cpt_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wpgo_tabular_cpt_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wpgo_tabular_cpt_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wpgo_tabular_cpt_data'"
