<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mailpoet_gravity_forms_addon_version');
delete_site_option('mailpoet_gravity_forms_addon_version');
delete_option('gf_mailpoet_settings');
delete_site_option('gf_mailpoet_settings');

