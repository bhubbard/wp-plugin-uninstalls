<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('word_replacer_ver');
delete_site_option('word_replacer_ver');

// Delete Transients
delete_transient('word_replacer_db');
delete_site_transient('word_replacer_db');

