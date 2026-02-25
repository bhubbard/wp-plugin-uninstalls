<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('amebawhatsnew-ameba-id');
delete_site_option('amebawhatsnew-ameba-id');
delete_option('amebawhatsnew-item-num');
delete_site_option('amebawhatsnew-item-num');
delete_option('amebawhatsnew-excerpt-length');
delete_site_option('amebawhatsnew-excerpt-length');

