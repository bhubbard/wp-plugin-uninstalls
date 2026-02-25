<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('l0nch_my_batsignal_option_expirecookie');
delete_site_option('l0nch_my_batsignal_option_expirecookie');
delete_option('l0nch_my_batsignal_option_declencheur');
delete_site_option('l0nch_my_batsignal_option_declencheur');
delete_option('l0nch_my_batsignal_option_declencheur_unit');
delete_site_option('l0nch_my_batsignal_option_declencheur_unit');
delete_option('l0nch_my_batsignal_option_powered');
delete_site_option('l0nch_my_batsignal_option_powered');
delete_option('l0nch_my_batsignal_option_newsletter_html');
delete_site_option('l0nch_my_batsignal_option_newsletter_html');

