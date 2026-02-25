<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fu_fastpostlists_style');
delete_site_option('fu_fastpostlists_style');
delete_option('fu_fastpostlists_headhtml');
delete_site_option('fu_fastpostlists_headhtml');
delete_option('fu_fastpostlists_posthtml');
delete_site_option('fu_fastpostlists_posthtml');
delete_option('fu_fastpostlists_foothtml');
delete_site_option('fu_fastpostlists_foothtml');

