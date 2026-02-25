<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('addtocart_btn_text_simple');
delete_site_option('addtocart_btn_text_simple');
delete_option('addtocart_btn_text_variable');
delete_site_option('addtocart_btn_text_variable');
delete_option('addtocart_btn_text_external');
delete_site_option('addtocart_btn_text_external');
delete_option('addtocart_btn_text_grouped');
delete_site_option('addtocart_btn_text_grouped');

