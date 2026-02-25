<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('rtg_disable_gallery_tax_category');
delete_site_option('rtg_disable_gallery_tax_category');

