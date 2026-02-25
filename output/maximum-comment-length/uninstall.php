<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MaxComLengthOptions');
delete_site_option('MaxComLengthOptions');
delete_option('Maxcomlength');
delete_site_option('Maxcomlength');

