<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mode');
delete_site_option('mode');
delete_option('domain_whitelist');
delete_site_option('domain_whitelist');
delete_option('domain_blacklist');
delete_site_option('domain_blacklist');
delete_option('bad_domain_message');
delete_site_option('bad_domain_message');

