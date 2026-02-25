<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atlasmic_selected_workspace_write_key');
delete_site_option('atlasmic_selected_workspace_write_key');

