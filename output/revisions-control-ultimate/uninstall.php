<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('revicoul_revision_limit');
delete_site_option('revicoul_revision_limit');
delete_option('revicoul_autosave_enabled');
delete_site_option('revicoul_autosave_enabled');
delete_option('revicoul_delete_data');
delete_site_option('revicoul_delete_data');

