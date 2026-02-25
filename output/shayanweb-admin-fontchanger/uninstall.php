<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shayanweb_fontchanger_options_adminnotice_ignore_options');
delete_site_option('shayanweb_fontchanger_options_adminnotice_ignore_options');
delete_option('shayanweb_fontchanger_options');
delete_site_option('shayanweb_fontchanger_options');

