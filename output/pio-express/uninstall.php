<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pio_express_hide_wpadminbar');
delete_site_option('pio_express_hide_wpadminbar');
delete_option('pio_express_rest_api');
delete_site_option('pio_express_rest_api');
delete_option('pio_express_xmlrpc');
delete_site_option('pio_express_xmlrpc');
delete_option('pio_express_rss_feed');
delete_site_option('pio_express_rss_feed');
delete_option('pio_express_login_logo');
delete_site_option('pio_express_login_logo');
delete_option('pio_express_logo_height');
delete_site_option('pio_express_logo_height');
delete_option('pio_express_logo_width');
delete_site_option('pio_express_logo_width');
delete_option('pio_express_login_bg');
delete_site_option('pio_express_login_bg');
delete_option('pio_express_login_bg_type');
delete_site_option('pio_express_login_bg_type');
delete_option('pio_express_login_logo_url');
delete_site_option('pio_express_login_logo_url');
delete_option('pio_express_login_background_color');
delete_site_option('pio_express_login_background_color');
delete_option('pio_express_login_form_link_color');
delete_site_option('pio_express_login_form_link_color');
delete_option('pio_hide_wpadminbar');
delete_site_option('pio_hide_wpadminbar');
delete_option('pio_logo_height');
delete_site_option('pio_logo_height');
delete_option('pio_logo_width');
delete_site_option('pio_logo_width');
delete_option('pio_login_logo');
delete_site_option('pio_login_logo');
delete_option('pio_express_plugin_version');
delete_site_option('pio_express_plugin_version');

