<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('test_some_id');
delete_site_option('test_some_id');
delete_option('citeChapters');
delete_site_option('citeChapters');
delete_option('hoverDelay');
delete_site_option('hoverDelay');
delete_option('horzPad');
delete_site_option('horzPad');
delete_option('looseContext');
delete_site_option('looseContext');
delete_option('listInvalid');
delete_site_option('listInvalid');
delete_option('ignoreFilter');
delete_site_option('ignoreFilter');

