#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yith-wcbm-enable-shop-manager'
wp option delete 'yith-wcbm-hide-in-sidebar'
wp option delete 'yith-wcbm-hide-on-single-product'
wp option delete 'yith-wcbm-hide-on-sale-default'
wp option delete 'yith-wcbm-when-hide-on-sale'
wp option delete 'yith-wcbm-hide-on-mobile'
wp option delete 'yith-wcbm-mobile-breakpoint'
wp option delete 'yith-wcbm-force-badge-positioning'
wp option delete 'yith-wcbm-enable-force-badge-positioning'
wp option delete 'yith-wcbm-product-badge-overrides-default-on-sale'
wp option delete 'yit_font_awesome_list'
wp option delete 'yit_dashicons_list'
wp option delete 'yit_plugin_fw_panel_wc_default_options_set'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_width'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_height'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_options'"
wp option delete 'yit_recently_activated'
wp option delete 'yith_system_info'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-yith-attachment-id'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_meta' OR option_name LIKE '_site_transient_%_meta'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_meta_with_variations' OR option_name LIKE '_site_transient_%_meta_with_variations'"
wp transient delete 'yith_wcbm_installing'
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_badge_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_badge_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_badge_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_badge_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yith_wcbm_product_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yith_wcbm_product_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yith_wcbm_product_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yith_wcbm_product_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_text'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_text'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_text'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_text'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_background_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_background_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_background_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_background_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_position'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_position'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_position'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_position'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_alignment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_alignment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_alignment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_alignment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_image'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scale_on_mobile'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scale_on_mobile'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scale_on_mobile'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scale_on_mobile'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_size'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_padding'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_padding'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_padding'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_padding'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_border_radius'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_border_radius'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_border_radius'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_border_radius'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
