<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('txtimpact');
delete_site_option('txtimpact');
delete_option('txtimpact-received-messages-version');
delete_site_option('txtimpact-received-messages-version');
delete_option('txtimpact-sent-messages-version');
delete_site_option('txtimpact-sent-messages-version');
delete_option('txtimpact-subscribers-version');
delete_site_option('txtimpact-subscribers-version');
delete_option('widget_txtimpact-subscribe');
delete_site_option('widget_txtimpact-subscribe');

