<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('codemanas_social_sharing_options');
delete_site_option('codemanas_social_sharing_options');

