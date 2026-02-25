<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vctlo_404_redirect_url');
delete_site_option('vctlo_404_redirect_url');

