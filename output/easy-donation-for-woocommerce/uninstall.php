<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('edfw_donation_position');
delete_site_option('edfw_donation_position');
delete_option('edfw_donation_label_text');
delete_site_option('edfw_donation_label_text');
delete_option('edfw_donation_button_text');
delete_site_option('edfw_donation_button_text');
delete_option('edfw_donation_button_color');
delete_site_option('edfw_donation_button_color');
delete_option('edfw_donation_button_text_color');
delete_site_option('edfw_donation_button_text_color');
delete_option('edfw_donation_note');
delete_site_option('edfw_donation_note');

