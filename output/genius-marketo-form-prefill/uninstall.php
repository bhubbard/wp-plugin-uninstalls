<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MktoPrefill-active');
delete_site_option('MktoPrefill-active');
delete_option('MktoPrefill-form-page');
delete_site_option('MktoPrefill-form-page');
delete_option('MktoPrefill-iframe-support');
delete_site_option('MktoPrefill-iframe-support');
delete_option('MktoPrefill-non-mkto-enabled');
delete_site_option('MktoPrefill-non-mkto-enabled');
delete_option('MktoPrefill-api-key');
delete_site_option('MktoPrefill-api-key');
delete_option('MktoPrefill-selected-fields');
delete_site_option('MktoPrefill-selected-fields');
delete_option('MktoPrefill-customer-type');
delete_site_option('MktoPrefill-customer-type');

