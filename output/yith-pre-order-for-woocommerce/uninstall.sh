#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'yith_wcpo_enable_pre_order'
wp option delete 'yith_wcpo_default_add_to_cart_label'
wp option delete 'ywpo_availability_in_shop'
wp option delete 'yith_wcpo_guest_users_price'
wp option delete 'yith_wcpo_show_regular_price'
wp option delete 'yith_wcpo_default_availability_date_label'
wp option delete 'yith_wcpo_enable_automatic_date_formatting'
wp option delete 'yith_wcpo_enable_pre_order_purchasable'
wp option delete 'yith-ywpo-flush-rewrite-rules'
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
wp transient delete 'yith-plugin-fw-latest-hc-articles'
wp transient delete 'yith-plugin-fw-system-status-tls-version'
wp transient delete 'yith-plugin-fw-system-status-output-ip'
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywpo_price_adjustment'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywpo_price_adjustment'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywpo_price_adjustment'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywpo_price_adjustment'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywpo_adjustment_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywpo_adjustment_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywpo_adjustment_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywpo_adjustment_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywpo_price_adjustment_amount'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywpo_price_adjustment_amount'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywpo_price_adjustment_amount'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywpo_price_adjustment_amount'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywpo_preorder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywpo_preorder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywpo_preorder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywpo_preorder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ywpo_has_variations'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ywpo_has_variations'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ywpo_has_variations'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ywpo_has_variations'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'dismissed_wp_pointers'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'blog-cats'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'blog-cats'"
