<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('dismiss_gutena_kit_install_cta');
delete_site_transient('dismiss_gutena_kit_install_cta');

