<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('Kw_hide_addto_hide_allways');
delete_site_option('Kw_hide_addto_hide_allways');
delete_option('Kw_hide_addto_hide_end');
delete_site_option('Kw_hide_addto_hide_end');
delete_option('hide_on');
delete_site_option('hide_on');

