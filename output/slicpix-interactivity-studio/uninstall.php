<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('slicpix_interactivity_studio_key');
delete_site_option('slicpix_interactivity_studio_key');

