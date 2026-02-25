<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hide_text_regex');
delete_site_option('hide_text_regex');
delete_option('hide_text_email');
delete_site_option('hide_text_email');
delete_option('hide_text_url');
delete_site_option('hide_text_url');
delete_option('hide_text_replace_text');
delete_site_option('hide_text_replace_text');
delete_option('hide_text_admin_hidden');
delete_site_option('hide_text_admin_hidden');
delete_option('hide_text_phone_number');
delete_site_option('hide_text_phone_number');
delete_option('promo_hunt_title');
delete_site_option('promo_hunt_title');
delete_option('promo_hunt_message');
delete_site_option('promo_hunt_message');
delete_option('promo_image');
delete_site_option('promo_image');

