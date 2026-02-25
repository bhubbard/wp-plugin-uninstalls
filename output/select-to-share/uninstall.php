<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sgi_ssr_ver');
delete_site_option('sgi_ssr_ver');
delete_option('sgi_ssr_opts');
delete_site_option('sgi_ssr_opts');

