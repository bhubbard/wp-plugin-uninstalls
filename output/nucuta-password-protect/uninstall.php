<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nucutaProtectSite');
delete_site_option('nucutaProtectSite');
delete_option('nucutaEditor');
delete_site_option('nucutaEditor');
delete_option('nucutaAuthor');
delete_site_option('nucutaAuthor');
delete_option('nucutaContributor');
delete_site_option('nucutaContributor');
delete_option('nucutaSubscriber');
delete_site_option('nucutaSubscriber');
delete_option('nucutaCustomMessage');
delete_site_option('nucutaCustomMessage');
delete_option('nucuta_pp_url');
delete_site_option('nucuta_pp_url');
delete_option('nucuta_password');
delete_site_option('nucuta_password');
delete_option('nucuta_password_state');
delete_site_option('nucuta_password_state');

