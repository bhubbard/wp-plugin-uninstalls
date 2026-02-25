<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jqfoot_anchor_open');
delete_site_option('jqfoot_anchor_open');
delete_option('jqfoot_anchor_close');
delete_site_option('jqfoot_anchor_close');
delete_option('jqfoot_title');
delete_site_option('jqfoot_title');
delete_option('jqfoot_backimg');
delete_site_option('jqfoot_backimg');
delete_option('jqfoot_hidefnlist');
delete_site_option('jqfoot_hidefnlist');
delete_option('jqfoot_nohover');
delete_site_option('jqfoot_nohover');

