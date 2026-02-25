<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('boxy_wc_redirect_option_name');
delete_site_option('boxy_wc_redirect_option_name');

