-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('alg_wc_products_per_page_enabled', 'alg_wc_products_per_page_session_enabled', 'alg_wc_products_per_page_cookie_enabled', 'alg_wc_products_per_page_wc_shortcode', 'alg_products_per_page_position', 'alg_wc_products_per_page_position_priorities', 'alg_products_per_page_position_priority', 'alg_wc_products_per_page_position_custom', 'alg_wc_products_per_page_custom_css', 'alg_products_per_page_text', 'alg_wc_products_per_page_select_class', 'alg_wc_products_per_page_select_style', 'alg_wc_products_per_page_before_html', 'alg_wc_products_per_page_after_html', 'alg_wc_products_per_page_radio_glue', 'alg_wc_products_per_page_form_method', 'alg_wc_products_per_page_cookie_sec', 'alg_wc_products_per_page_session_force_start', 'alg_wc_products_per_page_scopes', 'alg_products_per_page_default', 'alg_products_per_page_version', 'active_sitewide_plugins');
DELETE FROM wp_options WHERE option_name LIKE '%_reset';

