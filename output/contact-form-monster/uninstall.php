<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('YcfFormDraft');
delete_site_option('YcfFormDraft');
delete_option('YcfFormElements');
delete_site_option('YcfFormElements');

