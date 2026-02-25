<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('turgenev');
delete_site_option('turgenev');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');

