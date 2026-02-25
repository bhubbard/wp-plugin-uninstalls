<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dlm-hideprices');
delete_site_option('dlm-hideprices');
delete_option('dlm-name');
delete_site_option('dlm-name');
delete_option('dlm-color');
delete_site_option('dlm-color');
delete_option('dlm-api-key');
delete_site_option('dlm-api-key');

