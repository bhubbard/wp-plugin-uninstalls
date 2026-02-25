<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('llama_shuffle_recounted_v1');
delete_site_option('llama_shuffle_recounted_v1');

