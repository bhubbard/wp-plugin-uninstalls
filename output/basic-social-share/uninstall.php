<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bss-facebook');
delete_site_option('bss-facebook');
delete_option('bss-twitter');
delete_site_option('bss-twitter');
delete_option('bss-whatsapp');
delete_site_option('bss-whatsapp');
delete_option('bss-tumblr');
delete_site_option('bss-tumblr');
delete_option('bss-telegram');
delete_site_option('bss-telegram');
delete_option('bss-pinterest');
delete_site_option('bss-pinterest');
delete_option('bss-googleplus');
delete_site_option('bss-googleplus');
delete_option('bss-linkedin');
delete_site_option('bss-linkedin');

