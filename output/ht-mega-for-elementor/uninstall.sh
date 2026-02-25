#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'htmega_delete_data_fetch_cache'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_bar'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_popup'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_htiop_timer'"
wp option delete 'htmega_diagnostic_data_notice'
wp option delete 'htmega_diagnostic_data_agreed'
wp option delete 'htmega_api_last_req'
wp option delete 'htmega_newsletter_subscribed'
wp option delete 'htmega_themebuilder_module_settings'
wp option delete 'htmega_onboarding_completed'
wp option delete 'htmega_element_tabs'
wp option delete 'htmega_advance_element_tabs '
wp option delete 'htmega_megamenu_module_settings'
wp option delete 'htmegamenu_setting_tabs'
wp option delete 'htmegabuilder_templatebuilder_tabs'
wp option delete 'htmega_advance_element_tabs'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'ht_menu_options_%'"
wp option delete 'woocommerce_enable_ajax_add_to_cart'
wp option delete 'htmega_elementor_regenerate_file'
wp option delete 'htmega_elementor_addons_previous_version'
wp option delete 'htmega_rating_already_rated'
wp option delete 'htmega_elementor_addons_activation_time'
wp option delete 'htmega_elementor_addons_version'
wp option delete 'htmega_do_activation_redirect'
wp option delete 'woocommerce_cart_redirect_after_add'
wp option delete 'sbi_statuses'
wp option delete 'elementor_maintenance_mode_mode'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_htiop_preodic_reset_data' OR option_name LIKE '_site_transient_%_htiop_preodic_reset_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_htiop_data' OR option_name LIKE '_site_transient_%_htiop_data'"
wp transient delete 'htmega_api_backoff'
wp transient delete 'htmega_template_request_pending'
wp transient delete 'htmega_severdown_request_pending'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_htmega_user_refresh_%' OR option_name LIKE '_site_transient_htmega_user_refresh_%'"
wp transient delete 'htmega_api_failure_count'
wp transient delete 'weather-unit'
wp transient delete 'gio-location'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_htmega_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_htmega_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_htmega_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_htmega_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_page_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_template_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_page_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htmegabuilder_selectterm_layout'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htmegabuilder_selectterm_layout'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htmegabuilder_selectterm_layout'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htmegabuilder_selectterm_layout'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'htmega_menu_settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'htmega_menu_settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'htmega_menu_settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'htmega_menu_settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menuwidth'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menuwidth'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menuwidth'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menuwidth'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menuposition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menuposition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menuposition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menuposition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_template'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_template'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_template'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_template'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_ficon'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_ficon'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_ficon'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_ficon'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_ficoncolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_ficoncolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_ficoncolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_ficoncolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menutag'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menutag'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menutag'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menutag'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menutagcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menutagcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menutagcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menutagcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_menutagbgcolor'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_menutagbgcolor'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_menutagbgcolor'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_menutagbgcolor'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_megamenu'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_menu_item_disablet'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_menu_item_disablet'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_menu_item_disablet'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_menu_item_disablet'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_htmega_active'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_htmega_active'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_htmega_active'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_htmega_active'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_htmega_css'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_htmega_css'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_htmega_css'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_htmega_css'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'thumbnail_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
