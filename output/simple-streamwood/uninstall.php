<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('simple_streamwood_key');
delete_site_option('simple_streamwood_key');
delete_option('simple_streamwood_domain_key');
delete_site_option('simple_streamwood_domain_key');

