<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('iqlasit_tag_ids');
delete_site_transient('iqlasit_tag_ids');

