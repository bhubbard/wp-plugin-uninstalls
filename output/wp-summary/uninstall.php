<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('summary_showlink');
delete_site_option('summary_showlink');
delete_option('summary_head');
delete_site_option('summary_head');
delete_option('summary_listtype');
delete_site_option('summary_listtype');
delete_option('summary_align');
delete_site_option('summary_align');

