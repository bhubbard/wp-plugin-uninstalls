<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('chative-channel-id');
delete_site_option('chative-channel-id');
delete_option('chative-org-id');
delete_site_option('chative-org-id');

