<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('jvm_richtext_icons_activated');
delete_site_option('jvm_richtext_icons_activated');
delete_option('jvm_richtext_icons_review_dismissed');
delete_site_option('jvm_richtext_icons_review_dismissed');
delete_option('jvm-rich-text-icons');
delete_site_option('jvm-rich-text-icons');

