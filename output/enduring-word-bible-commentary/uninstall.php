<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('end_word_backlinking');
delete_site_option('end_word_backlinking');
delete_option('end_word_language');
delete_site_option('end_word_language');

