<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('red_glossaryOnlySingle');
delete_site_option('red_glossaryOnlySingle');
delete_option('red_glossaryOnPages');
delete_site_option('red_glossaryOnPages');
delete_option('red_glossaryID');
delete_site_option('red_glossaryID');

