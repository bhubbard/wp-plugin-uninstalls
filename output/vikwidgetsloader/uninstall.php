<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('vikwidgetsloader_disabled_widgets');
delete_site_option('vikwidgetsloader_disabled_widgets');
delete_option('vikwidgetsloader_onactivate');
delete_site_option('vikwidgetsloader_onactivate');

