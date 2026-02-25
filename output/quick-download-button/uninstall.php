<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qdbu_quick_download_button_page_id');
delete_site_option('qdbu_quick_download_button_page_id');
delete_option('qdbn_option_name');
delete_site_option('qdbn_option_name');

