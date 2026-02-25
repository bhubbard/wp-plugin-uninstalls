<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Transients
delete_transient('ely_hide_notices');
delete_site_transient('ely_hide_notices');
delete_transient('ely_hide_review_notice');
delete_site_transient('ely_hide_review_notice');

