<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('suscale_pages');
delete_site_option('suscale_pages');
delete_option('suscale_results_page_id');
delete_site_option('suscale_results_page_id');
delete_option('suscale_questionnaire_page_id');
delete_site_option('suscale_questionnaire_page_id');
delete_option('suscale_page_created');
delete_site_option('suscale_page_created');
delete_option('suscale_page_id');
delete_site_option('suscale_page_id');

