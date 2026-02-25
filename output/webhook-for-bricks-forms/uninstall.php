<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rup_bhfbf_webhooks');
delete_site_option('rup_bhfbf_webhooks');
delete_option('rup_bhfbf_debug');
delete_site_option('rup_bhfbf_debug');

