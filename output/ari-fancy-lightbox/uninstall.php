<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ari_fancy_lightbox_redirect');
delete_site_option('ari_fancy_lightbox_redirect');

