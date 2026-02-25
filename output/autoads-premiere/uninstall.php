<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('autoads_premiere_plugin_version');
delete_site_option('autoads_premiere_plugin_version');
delete_option('autoads_premiere_options');
delete_site_option('autoads_premiere_options');
delete_option('autoads_premiere');
delete_site_option('autoads_premiere');
delete_option('autoads_premiere_field_googleid');
delete_site_option('autoads_premiere_field_googleid');
delete_option('autoads_premiere_field_exclusions');
delete_site_option('autoads_premiere_field_exclusions');

