<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('askaiwp_setting');
delete_site_option('askaiwp_setting');

// Delete Transients
delete_transient('askaiwp_gemini_models');
delete_site_transient('askaiwp_gemini_models');

