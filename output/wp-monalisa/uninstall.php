<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpml-opts');
delete_site_option('wpml-opts');
delete_option('wpml-linesperpage');
delete_site_option('wpml-linesperpage');
delete_option('wpml_excludes');
delete_site_option('wpml_excludes');
delete_option('wpml_use_smilies_backup');
delete_site_option('wpml_use_smilies_backup');

