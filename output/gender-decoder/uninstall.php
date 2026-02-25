<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('masculine_words');
delete_site_option('masculine_words');
delete_option('feminine_words');
delete_site_option('feminine_words');

