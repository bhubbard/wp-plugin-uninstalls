<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('elekzene_cb');
delete_site_option('elekzene_cb');
delete_option('sarkok_cb');
delete_site_option('sarkok_cb');
delete_option('kozep_cb');
delete_site_option('kozep_cb');
delete_option('futok_cb');
delete_site_option('futok_cb');
delete_option('csodagif_cb');
delete_site_option('csodagif_cb');

