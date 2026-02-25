<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ctlb-initial-save-version');
delete_site_option('ctlb-initial-save-version');
delete_option('ctlb-install-date');
delete_site_option('ctlb-install-date');

