<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ldcode');
delete_site_option('ldcode');
delete_option('ldwidgetcodeurl');
delete_site_option('ldwidgetcodeurl');

