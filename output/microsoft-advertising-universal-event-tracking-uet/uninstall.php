<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('MsUet_Activated_Plugin');
delete_site_option('MsUet_Activated_Plugin');
delete_option('UetTagSettings');
delete_site_option('UetTagSettings');

