<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('cfv-enable-comment-validation');
delete_site_option('cfv-enable-comment-validation');
delete_option('cfv-prevenr-die');
delete_site_option('cfv-prevenr-die');
delete_option('cfv-comment-post-label');
delete_site_option('cfv-comment-post-label');

