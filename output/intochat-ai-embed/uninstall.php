<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('intochat_display_method');
delete_site_option('intochat_display_method');
delete_option('intochat_default_id');
delete_site_option('intochat_default_id');

// Delete Transients
delete_transient('intochat_embed_transient_data');
delete_site_transient('intochat_embed_transient_data');

