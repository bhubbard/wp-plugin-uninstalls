<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nwcoCurrentVersion');
delete_site_option('nwcoCurrentVersion');
delete_option('nwcoCurrentType');
delete_site_option('nwcoCurrentType');
delete_option('optShowOrderProducts');
delete_site_option('optShowOrderProducts');
delete_option('optStatusCompleted');
delete_site_option('optStatusCompleted');
delete_option('optStatusOnhold');
delete_site_option('optStatusOnhold');
delete_option('optStatusProcessing');
delete_site_option('optStatusProcessing');
delete_option('optStatusPending');
delete_site_option('optStatusPending');
delete_option('optStatusRefunded');
delete_site_option('optStatusRefunded');
delete_option('optStatusCancelled');
delete_site_option('optStatusCancelled');
delete_option('optStatusFailed');
delete_site_option('optStatusFailed');
delete_option('optPie3D');
delete_site_option('optPie3D');
delete_option('optShipping');
delete_site_option('optShipping');
delete_option('optYear');
delete_site_option('optYear');
delete_option('optProd');
delete_site_option('optProd');
delete_option('optCat');
delete_site_option('optCat');
delete_option('optStatus');
delete_site_option('optStatus');
delete_option('optTotal');
delete_site_option('optTotal');

