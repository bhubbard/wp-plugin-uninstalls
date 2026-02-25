<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('nakedcatplugins_lang_attr_highlight_blocks');
delete_site_option('nakedcatplugins_lang_attr_highlight_blocks');

