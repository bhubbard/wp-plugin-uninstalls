<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('family_wiki_calendar_page');
delete_site_option('family_wiki_calendar_page');

