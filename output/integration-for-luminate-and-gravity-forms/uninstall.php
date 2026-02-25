<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('gravityforms-luminate_constituent_fields');
delete_site_transient('gravityforms-luminate_constituent_fields');
delete_transient('gravityforms-luminate_luminate_groups');
delete_site_transient('gravityforms-luminate_luminate_groups');

