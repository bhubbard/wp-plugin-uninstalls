<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('woowib_setting');
delete_site_option('woowib_setting');
delete_option('_first_set_enable_payment');
delete_site_option('_first_set_enable_payment');

