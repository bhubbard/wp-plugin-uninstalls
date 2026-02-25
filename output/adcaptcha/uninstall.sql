-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('adcaptcha_api_key', 'adcaptcha_placement_id', 'adcaptcha_render_captcha', 'adcaptcha_selected_plugins', 'experimental_disable_wc_checkout_endpoint', 'adcaptcha_wc_checkout_optional_trigger');

