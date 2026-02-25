<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wonderplugin_wperror_mail');
delete_site_option('wonderplugin_wperror_mail');
delete_option('wonderplugin_wperror_maxlength');
delete_site_option('wonderplugin_wperror_maxlength');

