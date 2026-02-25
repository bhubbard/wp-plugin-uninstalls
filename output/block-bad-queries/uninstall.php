<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bbq-block-count');
delete_site_option('bbq-block-count');
delete_option('bbq_options_free');
delete_site_option('bbq_options_free');
delete_option('bbq-firewall-dismiss-notice');
delete_site_option('bbq-firewall-dismiss-notice');

