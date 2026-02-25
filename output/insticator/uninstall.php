<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Insticator_headerCode');
delete_site_option('Insticator_headerCode');
delete_option('Insticator_bodyCode');
delete_site_option('Insticator_bodyCode');
delete_option('Insticator_siteUUID');
delete_site_option('Insticator_siteUUID');
delete_option('Insticator_embedList');
delete_site_option('Insticator_embedList');
delete_option('Insticator_embedUUID');
delete_site_option('Insticator_embedUUID');

