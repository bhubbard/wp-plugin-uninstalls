<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('translatecart_hide_selector_single');
delete_site_option('translatecart_hide_selector_single');
delete_option('translatecart_setup_complete');
delete_site_option('translatecart_setup_complete');
delete_option('translatecart_show_wizard');
delete_site_option('translatecart_show_wizard');
delete_option('translatecart_custom_fields');
delete_site_option('translatecart_custom_fields');
delete_option('translatecart_validation_messages');
delete_site_option('translatecart_validation_messages');
delete_option('translatecart_version');
delete_site_option('translatecart_version');
delete_option('translatecart_pro_url');
delete_site_option('translatecart_pro_url');

