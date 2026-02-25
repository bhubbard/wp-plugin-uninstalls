-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('respek_auth_token', 'respek_api_url', 'respek_button_template', 'respek_gif_feature', 'respek_compensation_count', 'respek_impact', 'respek_popup_template', 'respek_timestamp_popup', 'respek_popup_placement', 'respek_is_active', 'respek_checkout_placement', 'respek_collections', 'respek_matching_collections', 'respek_on_us_collections', 'respek_show_popup', 'respek_popup_title', 'respek_popup_message', 'woocommerce_currency', 'extra_post_info');

