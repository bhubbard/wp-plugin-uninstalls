<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dco_pv');
delete_site_option('dco_pv');
delete_option('classic-editor-replace');
delete_site_option('classic-editor-replace');

