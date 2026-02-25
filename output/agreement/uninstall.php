<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('agreement');
delete_site_option('agreement');
delete_option('agreement_text');
delete_site_option('agreement_text');

