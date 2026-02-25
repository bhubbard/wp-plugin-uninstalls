#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'alg_wc_products_per_page_enabled'
wp option delete 'alg_wc_products_per_page_session_enabled'
wp option delete 'alg_wc_products_per_page_cookie_enabled'
wp option delete 'alg_wc_products_per_page_wc_shortcode'
wp option delete 'alg_products_per_page_position'
wp option delete 'alg_wc_products_per_page_position_priorities'
wp option delete 'alg_products_per_page_position_priority'
wp option delete 'alg_wc_products_per_page_position_custom'
wp option delete 'alg_wc_products_per_page_custom_css'
wp option delete 'alg_products_per_page_text'
wp option delete 'alg_wc_products_per_page_select_class'
wp option delete 'alg_wc_products_per_page_select_style'
wp option delete 'alg_wc_products_per_page_before_html'
wp option delete 'alg_wc_products_per_page_after_html'
wp option delete 'alg_wc_products_per_page_radio_glue'
wp option delete 'alg_wc_products_per_page_form_method'
wp option delete 'alg_wc_products_per_page_cookie_sec'
wp option delete 'alg_wc_products_per_page_session_force_start'
wp option delete 'alg_wc_products_per_page_scopes'
wp option delete 'alg_products_per_page_default'
wp option delete 'alg_products_per_page_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_reset'"
wp option delete 'active_sitewide_plugins'

