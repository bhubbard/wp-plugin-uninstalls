<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('gurualpha_bic_image_changer_history');
delete_site_option('gurualpha_bic_image_changer_history');

