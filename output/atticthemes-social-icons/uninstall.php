<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('atticthemes_social_icon_sets');
delete_site_option('atticthemes_social_icon_sets');
delete_option('atticthemes_social_icons_ids');
delete_site_option('atticthemes_social_icons_ids');

