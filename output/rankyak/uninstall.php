<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rankyak_embed_key');
delete_site_option('rankyak_embed_key');
delete_option('rankyak_activation_redirect');
delete_site_option('rankyak_activation_redirect');

// Delete Transients
delete_transient('rankyak_notices');
delete_site_transient('rankyak_notices');

