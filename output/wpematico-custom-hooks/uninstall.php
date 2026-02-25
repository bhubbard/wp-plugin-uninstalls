<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpematicohk_datahooks');
delete_site_option('wpematicohk_datahooks');
delete_option('wpematicohk_theme_editor');
delete_site_option('wpematicohk_theme_editor');

