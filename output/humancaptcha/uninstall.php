<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('obr_humancaptcha_version');
delete_site_option('obr_humancaptcha_version');

