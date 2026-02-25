<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bdtzoffset');
delete_site_option('bdtzoffset');
delete_option('rpuAllowedTags');
delete_site_option('rpuAllowedTags');

