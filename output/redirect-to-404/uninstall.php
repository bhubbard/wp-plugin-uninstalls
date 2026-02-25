<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('PRT_redirect_404_pageUrl');
delete_site_option('PRT_redirect_404_pageUrl');
delete_option('PRT_redirect_404_status');
delete_site_option('PRT_redirect_404_status');
delete_option('prfx_value');
delete_site_option('prfx_value');
delete_option('prfx_info');
delete_site_option('prfx_info');

