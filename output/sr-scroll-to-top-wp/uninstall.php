<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bappi_scroll_up_options_default');
delete_site_option('bappi_scroll_up_options_default');

