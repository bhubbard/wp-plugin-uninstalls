<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('emc2_wysiwyg_page_widths');
delete_site_option('emc2_wysiwyg_page_widths');

