<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('notifosl_slack_form_hooks');
delete_site_option('notifosl_slack_form_hooks');

