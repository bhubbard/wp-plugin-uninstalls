<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yektanetaffiliate_version');
delete_site_option('yektanetaffiliate_version');
delete_option('yektanetaffiliate_db_version');
delete_site_option('yektanetaffiliate_db_version');
delete_option('yektanetaffiliate_settings');
delete_site_option('yektanetaffiliate_settings');
delete_option('redirect_after_activation_option');
delete_site_option('redirect_after_activation_option');
delete_option('YEKTANETAFFILIATE_DB_VERSION');
delete_site_option('YEKTANETAFFILIATE_DB_VERSION');
delete_option('YEKTANETAFFILIATE_VERSION');
delete_site_option('YEKTANETAFFILIATE_VERSION');

