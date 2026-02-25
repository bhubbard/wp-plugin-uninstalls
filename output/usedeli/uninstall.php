<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('usedeli_api');
delete_site_option('usedeli_api');
delete_option('usedeli_mls_id');
delete_site_option('usedeli_mls_id');
delete_option('usedeli_logo');
delete_site_option('usedeli_logo');
delete_option('usedeli_color');
delete_site_option('usedeli_color');
delete_option('usedeli_position');
delete_site_option('usedeli_position');
delete_option('usedeli_display_name');
delete_site_option('usedeli_display_name');
delete_option('usedeli_display_on');
delete_site_option('usedeli_display_on');
delete_option('usedeli_post_ids');
delete_site_option('usedeli_post_ids');
delete_option('usedeli_token');
delete_site_option('usedeli_token');
delete_option('usedeli_initial_question');
delete_site_option('usedeli_initial_question');
delete_option('usedeli_status');
delete_site_option('usedeli_status');

