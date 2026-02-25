#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'woocommerce_db_version'
wp option delete 'mos_product_specifications_tab_options'
wp option delete 'mos_product_specifications_tab_flush_rewrite'
wp option delete 'mos_product_specifications_tab_deactive_key'
wp option delete 'mos_product_specifications_tab_do_activation_redirect'

# Delete Transients
wp transient delete 'mos_product_specifications_tab_activation_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mos_specifications_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mos_specifications_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mos_specifications_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mos_specifications_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mos_product_specifications_tab_settings_theme'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mos_product_specifications_tab_settings_theme'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mos_product_specifications_tab_settings_theme'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mos_product_specifications_tab_settings_theme'"
