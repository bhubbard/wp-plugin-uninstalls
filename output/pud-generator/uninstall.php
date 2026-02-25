<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('pud_max_page');
delete_site_option('pud_max_page');
delete_option('pud_default_author');
delete_site_option('pud_default_author');
delete_option('pud_page_status');
delete_site_option('pud_page_status');
delete_option('pud_page_visibility');
delete_site_option('pud_page_visibility');
delete_option('pud_tour_generator');
delete_site_option('pud_tour_generator');
delete_option('pud_tour_manage');
delete_site_option('pud_tour_manage');
delete_option('pud_tour_placeholder');
delete_site_option('pud_tour_placeholder');

