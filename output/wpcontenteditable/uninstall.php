<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('upstatement_ce_options');
delete_site_option('upstatement_ce_options');
delete_option('reference-post-type');
delete_site_option('reference-post-type');
delete_option('button-text');
delete_site_option('button-text');

