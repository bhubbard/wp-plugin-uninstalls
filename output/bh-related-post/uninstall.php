<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bh_related_post_options');
delete_site_option('bh_related_post_options');

// Delete Transients
delete_transient('bh_related_post_do_activation_redirect');
delete_site_transient('bh_related_post_do_activation_redirect');

