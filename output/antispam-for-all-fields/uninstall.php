<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_antispam_for_all_fields_statskilled');
delete_site_option('plugin_antispam_for_all_fields_statskilled');
delete_option('plugin_antispam_for_all_fields_statsspammed');
delete_site_option('plugin_antispam_for_all_fields_statsspammed');
delete_option('plugin_antispam_for_all_fields_installed');
delete_site_option('plugin_antispam_for_all_fields_installed');
delete_option('plugin_antispam_for_all_fields_settings');
delete_site_option('plugin_antispam_for_all_fields_settings');
delete_option('plugin_antispam_for_all_fields_version');
delete_site_option('plugin_antispam_for_all_fields_version');
delete_option('antispamextra_disallow_nonreferers');
delete_site_option('antispamextra_disallow_nonreferers');

// Delete Transients
delete_transient('plugin_afaf_nonce1');
delete_site_transient('plugin_afaf_nonce1');

