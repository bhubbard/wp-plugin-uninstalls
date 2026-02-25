<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pinsavepinterest_pin_text');
delete_site_option('pinsavepinterest_pin_text');
delete_option('pinsavepinterest_button_bg_color');
delete_site_option('pinsavepinterest_button_bg_color');
delete_option('pinsavepinterest_font_color');
delete_site_option('pinsavepinterest_font_color');
delete_option('pinsavepinterest_button_location');
delete_site_option('pinsavepinterest_button_location');
delete_option('pinsavepinterest_autohide');
delete_site_option('pinsavepinterest_autohide');

