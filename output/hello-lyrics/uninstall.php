<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('hls_lyric_text_title');
delete_site_option('hls_lyric_text_title');
delete_option('hls_lyric_text_by');
delete_site_option('hls_lyric_text_by');
delete_option('hls_lyric_textarea_field');
delete_site_option('hls_lyric_textarea_field');

