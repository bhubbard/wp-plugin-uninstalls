<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('tt_secret');
delete_site_option('tt_secret');
delete_option('tt_display');
delete_site_option('tt_display');
delete_option('tt_spamstrength');
delete_site_option('tt_spamstrength');
delete_option('tt_customcss');
delete_site_option('tt_customcss');
delete_option('tt_displaytags');
delete_site_option('tt_displaytags');
delete_option('tt_manualmod');
delete_site_option('tt_manualmod');
delete_option('tt_nfrontpage');
delete_site_option('tt_nfrontpage');

