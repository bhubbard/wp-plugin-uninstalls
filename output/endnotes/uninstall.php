<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_heavyheavy_endnotes_settings');
delete_site_option('_heavyheavy_endnotes_settings');

