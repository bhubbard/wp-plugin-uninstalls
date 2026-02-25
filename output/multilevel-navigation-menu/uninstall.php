<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mnmwp-switch');
delete_site_option('mnmwp-switch');
delete_option('mnmwp-first-back-color');
delete_site_option('mnmwp-first-back-color');
delete_option('mnmwp-first-back-color-hover');
delete_site_option('mnmwp-first-back-color-hover');
delete_option('mnmwp-first-back-color-active');
delete_site_option('mnmwp-first-back-color-active');
delete_option('mnmwp-first-font-color');
delete_site_option('mnmwp-first-font-color');
delete_option('mnmwp-first-font-color-hover');
delete_site_option('mnmwp-first-font-color-hover');
delete_option('mnmwp-first-font-color-active');
delete_site_option('mnmwp-first-font-color-active');
delete_option('mnmwp-second-back-color');
delete_site_option('mnmwp-second-back-color');
delete_option('mnmwp-second-back-color-hover');
delete_site_option('mnmwp-second-back-color-hover');
delete_option('mnmwp-second-back-color-active');
delete_site_option('mnmwp-second-back-color-active');
delete_option('mnmwp-second-font-color');
delete_site_option('mnmwp-second-font-color');
delete_option('mnmwp-second-font-color-hover');
delete_site_option('mnmwp-second-font-color-hover');
delete_option('mnmwp-second-font-color-active');
delete_site_option('mnmwp-second-font-color-active');
delete_option('mnmwp-rest-back-color');
delete_site_option('mnmwp-rest-back-color');
delete_option('mnmwp-rest-back-color-hover');
delete_site_option('mnmwp-rest-back-color-hover');
delete_option('mnmwp-rest-back-color-active');
delete_site_option('mnmwp-rest-back-color-active');
delete_option('mnmwp-rest-font-color');
delete_site_option('mnmwp-rest-font-color');
delete_option('mnmwp-rest-font-color-hover');
delete_site_option('mnmwp-rest-font-color-hover');
delete_option('mnmwp-rest-font-color-active');
delete_site_option('mnmwp-rest-font-color-active');
delete_option('mnmwp-menu-icon-color');
delete_site_option('mnmwp-menu-icon-color');
delete_option('mnmwp-menu-outer-width');
delete_site_option('mnmwp-menu-outer-width');
delete_option('mnmwp-menu-inner-width');
delete_site_option('mnmwp-menu-inner-width');
delete_option('mnmwp-mobile-menu-breakpoint');
delete_site_option('mnmwp-mobile-menu-breakpoint');
delete_option('mnmwp-menu-shortcode');
delete_site_option('mnmwp-menu-shortcode');

