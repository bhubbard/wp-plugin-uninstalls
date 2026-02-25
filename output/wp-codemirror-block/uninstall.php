<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpcm_setting_misc_enableOnHome');
delete_site_option('wpcm_setting_misc_enableOnHome');

