<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bibly_linkVersion');
delete_site_option('bibly_linkVersion');
delete_option('bibly_popupVersion');
delete_site_option('bibly_popupVersion');
delete_option('bibly_enablePopups');
delete_site_option('bibly_enablePopups');
delete_option('bibly_startNodeId');
delete_site_option('bibly_startNodeId');

