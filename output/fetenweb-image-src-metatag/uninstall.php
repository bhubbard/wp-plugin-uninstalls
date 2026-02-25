<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fetenweb_image_src_metatag_default');
delete_site_option('fetenweb_image_src_metatag_default');

