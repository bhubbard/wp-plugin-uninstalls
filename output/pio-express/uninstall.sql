-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('pio_express_hide_wpadminbar', 'pio_express_rest_api', 'pio_express_xmlrpc', 'pio_express_rss_feed', 'pio_express_login_logo', 'pio_express_logo_height', 'pio_express_logo_width', 'pio_express_login_bg', 'pio_express_login_bg_type', 'pio_express_login_logo_url', 'pio_express_login_background_color', 'pio_express_login_form_link_color', 'pio_hide_wpadminbar', 'pio_logo_height', 'pio_logo_width', 'pio_login_logo', 'pio_express_plugin_version');

