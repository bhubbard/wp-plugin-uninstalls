<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mydr_dataask1');
delete_site_option('mydr_dataask1');
delete_option('mydr_dataask2');
delete_site_option('mydr_dataask2');
delete_option('mydr_dataask3');
delete_site_option('mydr_dataask3');
delete_option('mydr_dataask4');
delete_site_option('mydr_dataask4');
delete_option('mydr_dataplaceholder');
delete_site_option('mydr_dataplaceholder');
delete_option('mydr_datatitle');
delete_site_option('mydr_datatitle');
delete_option('mydr_datasubmittext');
delete_site_option('mydr_datasubmittext');
delete_option('mydr_datadata1');
delete_site_option('mydr_datadata1');
delete_option('mydr_datadata2');
delete_site_option('mydr_datadata2');
delete_option('mydr_datasubmit');
delete_site_option('mydr_datasubmit');
delete_option('mydr_dr_mydataplaceholder');
delete_site_option('mydr_dr_mydataplaceholder');

