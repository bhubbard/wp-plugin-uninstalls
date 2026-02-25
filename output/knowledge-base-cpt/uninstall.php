<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('ot_knowledge_slug');
delete_site_option('ot_knowledge_slug');
delete_option('ot_knowledge_version');
delete_site_option('ot_knowledge_version');

