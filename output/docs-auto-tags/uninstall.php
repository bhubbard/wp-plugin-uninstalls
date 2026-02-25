<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('docs_autotags');
delete_site_option('docs_autotags');
delete_option('docs_autocategories');
delete_site_option('docs_autocategories');

