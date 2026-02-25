<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('shashin_permalinks-on');
delete_site_option('shashin_permalinks-on');
delete_option('shashin_permalinks-title_on');
delete_site_option('shashin_permalinks-title_on');
delete_option('shashin_permalinks-sociable_on');
delete_site_option('shashin_permalinks-sociable_on');
delete_option('shashin_permalinks-key_album');
delete_site_option('shashin_permalinks-key_album');
delete_option('shashin_permalinks-key_page');
delete_site_option('shashin_permalinks-key_page');
delete_option('rewrite_rules');
delete_site_option('rewrite_rules');

