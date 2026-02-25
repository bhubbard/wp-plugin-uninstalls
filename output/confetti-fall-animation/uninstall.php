<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('confetti-popup-delay');
delete_site_option('confetti-popup-delay');
delete_option('confetti_welcome_shown');
delete_site_option('confetti_welcome_shown');
delete_option('confetti-popup-content');
delete_site_option('confetti-popup-content');
delete_option('confetti-popup-pages');
delete_site_option('confetti-popup-pages');
delete_option('confetti_active');
delete_site_option('confetti_active');
delete_option('popup_background_image');
delete_site_option('popup_background_image');

