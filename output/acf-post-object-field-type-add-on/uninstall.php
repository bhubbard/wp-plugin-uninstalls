<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('de_acfpoftao_version');
delete_site_option('de_acfpoftao_version');
delete_option('de_acfpoftao_enable');
delete_site_option('de_acfpoftao_enable');
delete_option('de_acfpoftao_append_field');
delete_site_option('de_acfpoftao_append_field');
delete_option('de_acfpoftao_append_field_format');
delete_site_option('de_acfpoftao_append_field_format');
delete_option('acf_version');
delete_site_option('acf_version');

