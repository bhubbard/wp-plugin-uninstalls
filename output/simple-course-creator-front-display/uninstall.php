<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('sccfd_background');
delete_site_option('sccfd_background');
delete_option('sccfd_border_color');
delete_site_option('sccfd_border_color');
delete_option('sccfd_text_color');
delete_site_option('sccfd_text_color');

