<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fcb-initial-save-version');
delete_site_option('fcb-initial-save-version');
delete_option('fcb-install-date');
delete_site_option('fcb-install-date');
delete_option('fcb-alreadyRated');
delete_site_option('fcb-alreadyRated');
delete_option('fcb-installDate');
delete_site_option('fcb-installDate');
delete_option('fcb-ratingDiv');
delete_site_option('fcb-ratingDiv');
delete_option('fcb-v');
delete_site_option('fcb-v');
delete_option('fcb-type');
delete_site_option('fcb-type');

