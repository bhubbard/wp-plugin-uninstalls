<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bizbaby_plans');
delete_site_option('bizbaby_plans');
delete_option('bizbaby_plan_last_updated');
delete_site_option('bizbaby_plan_last_updated');
delete_option('bizbaby_plan');
delete_site_option('bizbaby_plan');
delete_option('bizbaby_slogan_option');
delete_site_option('bizbaby_slogan_option');
delete_option('bizbaby_form_shortcodes');
delete_site_option('bizbaby_form_shortcodes');

