<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('SP_text_1');
delete_site_option('SP_text_1');
delete_option('SP_text_2');
delete_site_option('SP_text_2');
delete_option('ps_myphoto_page_id');
delete_site_option('ps_myphoto_page_id');
delete_option('SP_option_name');
delete_site_option('SP_option_name');

