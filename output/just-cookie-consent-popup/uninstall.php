<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jccpopup_cookie_popup_settings');
delete_site_option('jccpopup_cookie_popup_settings');

