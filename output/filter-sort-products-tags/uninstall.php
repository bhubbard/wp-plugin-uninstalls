<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fspt_enabled');
delete_site_option('fspt_enabled');
delete_option('fspt_custom_text');
delete_site_option('fspt_custom_text');

