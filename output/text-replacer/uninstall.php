<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('plugin_text_replacer_list');
delete_site_option('plugin_text_replacer_list');
delete_option('replacementText');
delete_site_option('replacementText');

