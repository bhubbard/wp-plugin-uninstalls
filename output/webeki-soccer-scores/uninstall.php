<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('raeven');
delete_site_option('raeven');
delete_option('raodd');
delete_site_option('raodd');
delete_option('caeven');
delete_site_option('caeven');
delete_option('caodd');
delete_site_option('caodd');
delete_option('fcfrcolumn');
delete_site_option('fcfrcolumn');
delete_option('fcfrrow');
delete_site_option('fcfrrow');
delete_option('customizeSetting');
delete_site_option('customizeSetting');

