<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('dblocks_textColor');
delete_site_option('dblocks_textColor');
delete_option('dblocks_color');
delete_site_option('dblocks_color');
delete_option('dblocks_playButtonSize');
delete_site_option('dblocks_playButtonSize');
delete_option('dblocks_iconType');
delete_site_option('dblocks_iconType');
delete_option('dblocks_svgContent');
delete_site_option('dblocks_svgContent');
delete_option('dblocks_playButtonStyle');
delete_site_option('dblocks_playButtonStyle');

