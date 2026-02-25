<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fixedbottommenu_settings');
delete_site_option('fixedbottommenu_settings');
delete_option('fixedbottommenu_settings_col');
delete_site_option('fixedbottommenu_settings_col');
delete_option('fixedbottommenu_template');
delete_site_option('fixedbottommenu_template');
delete_option('fixedbottommenu_add_on_icon_settings');
delete_site_option('fixedbottommenu_add_on_icon_settings');
delete_option('fixedbottommenu_settings_old');
delete_site_option('fixedbottommenu_settings_old');

