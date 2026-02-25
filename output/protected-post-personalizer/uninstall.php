<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('password-protected-prefix');
delete_site_option('password-protected-prefix');
delete_option('private-prefix');
delete_site_option('private-prefix');
delete_option('custom-preview-text');
delete_site_option('custom-preview-text');
delete_option('password-form-prefix');
delete_site_option('password-form-prefix');
delete_option('password-form-submit');
delete_site_option('password-form-submit');
delete_option('passworded-preview-type');
delete_site_option('passworded-preview-type');
delete_option('password-form-css');
delete_site_option('password-form-css');

