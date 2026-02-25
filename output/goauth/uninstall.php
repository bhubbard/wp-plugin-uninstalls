<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fs_debug_mode');
delete_site_option('fs_debug_mode');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');
delete_option('fs_active_plugins');
delete_site_option('fs_active_plugins');
delete_option('fs_storage_logger');
delete_site_option('fs_storage_logger');
delete_option('goauth_enable');
delete_site_option('goauth_enable');
delete_option('goauth_force_login');
delete_site_option('goauth_force_login');
delete_option('goauth_hide_loginform');
delete_site_option('goauth_hide_loginform');
delete_option('goauth_hide_forget');
delete_site_option('goauth_hide_forget');
delete_option('goauth_xmlrpc_disabled');
delete_site_option('goauth_xmlrpc_disabled');
delete_option('goauth_api_disabled');
delete_site_option('goauth_api_disabled');
delete_option('goauth_save_on_uninstall');
delete_site_option('goauth_save_on_uninstall');
delete_option('goauth_antilockout');
delete_site_option('goauth_antilockout');
delete_option('goauth_2fa_enable');
delete_site_option('goauth_2fa_enable');
delete_option('goauth_2fa_salt');
delete_site_option('goauth_2fa_salt');
delete_option('goauth_2fa_show_qr');
delete_site_option('goauth_2fa_show_qr');
delete_option('goauth_google_enable');
delete_site_option('goauth_google_enable');
delete_option('goauth_client_id');
delete_site_option('goauth_client_id');
delete_option('goauth_client_secret');
delete_site_option('goauth_client_secret');
delete_option('goauth_domain');
delete_site_option('goauth_domain');
delete_option('goauth_button_style');
delete_site_option('goauth_button_style');
delete_option('goauth_disable_user_enum');
delete_site_option('goauth_disable_user_enum');
delete_option('goauth_recover_button_style');
delete_site_option('goauth_recover_button_style');
delete_option('goauth_db_version');
delete_site_option('goauth_db_version');
delete_option('goauth_auto_register_exclude');
delete_site_option('goauth_auto_register_exclude');

// Delete Transients
delete_transient('update_plugins');
delete_site_transient('update_plugins');
delete_transient('update_themes');
delete_site_transient('update_themes');

// Clear Cron Jobs
wp_clear_scheduled_hook('goauth_remove_garbage');

