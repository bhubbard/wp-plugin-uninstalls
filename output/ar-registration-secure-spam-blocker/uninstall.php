<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ars_question');
delete_site_option('ars_question');
delete_option('ars_answer');
delete_site_option('ars_answer');

