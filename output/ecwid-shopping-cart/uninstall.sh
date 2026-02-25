#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ecwid_last_oauth_fail_time'
wp option delete 'ecwid_remove_emoji'
wp option delete 'ecwid_historyjs_html4mode'
wp option delete 'ecwid_plugin_version'
wp option delete 'ecwid-plugin-version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ecwid_chameleon_colors_%'"
wp option delete 'ecwid_use_chameleon'
wp option delete 'ecwid_plugin_migration_since_version'
wp option delete 'ecwid_fetch_url_use_file_get_contents'
wp option delete 'ecwid_remote_get_timeout'
wp option delete 'ecwid_support_email'
wp option delete 'ecwid_enable_sso'
wp option delete 'ecwid_disable_pb_url'
wp option delete 'ecwid_use_new_search'
wp option delete 'ecwid_use_new_categories'
wp option delete 'ecwid_hide_appearance_menu'
wp option delete 'ecwid_use_js_api_to_open_store_pages'
wp option delete 'ecwid_use_js_api_to_open_store_categories_pages'
wp option delete 'ecwid_print_html_catalog'
wp option delete 'ecwid_hide_prefetch'
wp option delete 'ecwid_hide_old_minicart'
wp option delete 'force_scriptjs_render'
wp option delete 'ecwid_hide_canonical'
wp option delete 'ecwid_new_static_home_page_enabled'
wp option delete 'ecwid_store_page_id'
wp option delete 'ecwid_store_page_id_auto'
wp option delete 'ecwid_disable_dashboard'
wp option delete 'ecwid_error_log'
wp option delete 'ecwid_last_api_cache_check'
wp option delete 'ecwid_last_transients_check'
wp option delete 'ecwid_show_vote_message'
wp option delete 'ecwid_store_shortcode_used'
wp option delete 'ecwid_store_id'
wp option delete 'ecwid_enable_minicart'
wp option delete 'ecwid_show_categories'
wp option delete 'ecwid_show_search_box'
wp option delete 'ecwid_pb_categoriesperrow'
wp option delete 'ecwid_pb_productspercolumn_grid'
wp option delete 'ecwid_pb_productsperrow_grid'
wp option delete 'ecwid_pb_productsperpage_list'
wp option delete 'ecwid_pb_productsperpage_table'
wp option delete 'ecwid_pb_defaultview'
wp option delete 'ecwid_pb_searchview'
wp option delete 'ecwid_mobile_catalog_link'
wp option delete 'ecwid_default_category_id'
wp option delete 'ecwid_sso_secret_key'
wp option delete 'ecwid_installation_date'
wp option delete 'ecwid_is_sso_enabled'
wp option delete 'ecwid_connected_via_legacy_page_time'
wp option delete 'ecwid_oauth_scope'
wp option delete 'ecwid_api_check_retry_after'
wp option delete 'ecwid_plugin_data'
wp option delete 'ecwid_time_correction'
wp option delete 'ecwid_frontpage_settings'
wp option delete 'ecwid_disabled_messages'
wp option delete 'nav_menu_options'
wp option delete 'ecwid_public_token'
wp option delete 'ecwid_chameleon_colors_button'
wp option delete 'ecwid_chameleon_colors_foreground'
wp option delete 'ecwid_chameleon_colors_price'
wp option delete 'ecwid_chameleon_colors_link'
wp option delete 'ecwid_chameleon_colors_background'
wp option delete 'rewrite_rules'
wp option delete 'ecwid_live_preview_for_gutenberg_enabled'
wp option delete 'default_product_cat'
wp option delete 'ecwid_single_product_used'
wp option delete 'ecwid_advanced_theme_layout'
wp option delete 'ecwid_defer_rendering'
wp option delete 'sidebars_widgets'
wp option delete 'widget_ecwidstorelink'
wp option delete 'widget_ecwidfloatingshoppingcart'
wp option delete 'ecwid_cache_log'
wp option delete 'ecwid_remote_get_fails'
wp option delete 'ecwid_local_base_enabled'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ecwid_%' OR option_name LIKE '_site_transient_ecwid_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwid_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwid_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwid_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwid_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_object_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ecwid_product_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ecwid_product_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ecwid_product_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ecwid_product_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_ecwid_variation_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_ecwid_variation_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_ecwid_variation_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_ecwid_variation_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ecwid_category_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ecwid_category_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ecwid_category_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ecwid_category_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_witty_builder_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_witty_builder_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_witty_builder_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_witty_builder_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mfn-page-items'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'env_composer'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'env_composer'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'env_composer'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'env_composer'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'first_name'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'nickname'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'last_name'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'last_name'"
