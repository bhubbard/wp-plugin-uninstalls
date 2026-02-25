<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfTwitterToken');
delete_site_option('cfTwitterToken');
delete_option('cfNumberOfFollowers');
delete_site_option('cfNumberOfFollowers');

