#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'shapedplugin_offer_banner_dismissed_%'"
wp option delete 'sp_wptabs_review_notice_dismiss'
wp option delete 'sp_products_tabs_advanced'
wp option delete 'wp_tabs_version'
wp option delete 'wp_tabs_first_version'
wp option delete 'wp_tabs_activation_date'
wp option delete 'wp_tabs_db_version'
wp option delete 'sp-tab__settings'
wp option delete 'smart_tabs_wc_notice_dismiss_status'
wp option delete 'sptabs_product_tabs_settings'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sp_tab_page_id%'"
wp option delete 'shapedplugin_offer_banner_dismissed_black_friday_2025'
wp option delete 'shapedplugin_offer_banner_dismissed_new_year_2026'

# Delete Transients
wp transient delete 'sptabs_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_tab_source_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_tab_source_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_tab_source_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_tab_source_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_tab_shortcode_options'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_tab_shortcode_options'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_tab_shortcode_options'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_tab_shortcode_options'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sptpro_woo_product_tabs_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sptpro_woo_product_tabs_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sptpro_woo_product_tabs_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sptpro_woo_product_tabs_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'show_product_tabs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'show_product_tabs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'show_product_tabs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'show_product_tabs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tab_was_just_published'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tab_was_just_published'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tab_was_just_published'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tab_was_just_published'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wc_default_tab_slug'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wc_default_tab_slug'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wc_default_tab_slug'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wc_default_tab_slug'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_wptabspro_errors_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_wptabspro_errors_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_wptabspro_errors_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_wptabspro_errors_%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'sp_override_tab_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'sp_override_tab_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'sp_override_tab_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'sp_override_tab_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'et_pb_use_builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'et_pb_use_builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'et_pb_use_builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'et_pb_use_builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
