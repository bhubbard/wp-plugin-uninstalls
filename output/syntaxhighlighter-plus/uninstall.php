<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('syntaxhighlighterplus_options');
delete_site_option('syntaxhighlighterplus_options');

