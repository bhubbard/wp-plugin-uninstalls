<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mega_socials_setting');
delete_site_option('mega_socials_setting');
delete_option('mega_socials_setting_var');
delete_site_option('mega_socials_setting_var');
delete_option('mega_socials_setting_name');
delete_site_option('mega_socials_setting_name');

