<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('awext_ishome');
delete_site_option('awext_ishome');
delete_option('awext_issingle');
delete_site_option('awext_issingle');
delete_option('awext_ispage');
delete_site_option('awext_ispage');
delete_option('awext_isarchive');
delete_site_option('awext_isarchive');
delete_option('awext_issearch');
delete_site_option('awext_issearch');
delete_option('awext_is404');
delete_site_option('awext_is404');

