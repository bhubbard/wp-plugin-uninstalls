<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('kblog_boilerplate_in_content');
delete_site_option('kblog_boilerplate_in_content');

