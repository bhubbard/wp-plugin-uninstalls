<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('wcrebtp_good_luck_admin_notice');
delete_site_transient('wcrebtp_good_luck_admin_notice');
delete_transient('wcrebtp_check_if_installed');
delete_site_transient('wcrebtp_check_if_installed');

