<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('cs-framework-transient');
delete_site_transient('cs-framework-transient');
delete_transient('cs-metabox-transient');
delete_site_transient('cs-metabox-transient');

