<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('i_love_popups_connector_opts');
delete_site_option('i_love_popups_connector_opts');

