<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('qepw_width');
delete_site_option('qepw_width');
delete_option('qepw_download_button');
delete_site_option('qepw_download_button');

