<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fa_emoticons_enable');
delete_site_option('fa_emoticons_enable');
delete_option('fa_emoticons_style');
delete_site_option('fa_emoticons_style');
delete_option('fa_emoticons_kit_url');
delete_site_option('fa_emoticons_kit_url');

