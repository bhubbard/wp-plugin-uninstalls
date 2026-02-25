<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hidden_tags_visibility');
delete_site_option('hidden_tags_visibility');
delete_option('hidden_tags');
delete_site_option('hidden_tags');

