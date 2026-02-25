<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bigfishgames_syndicate_interval');
delete_site_option('bigfishgames_syndicate_interval');
delete_option('bigfishgames_syndicate_wh_checked');
delete_site_option('bigfishgames_syndicate_wh_checked');
delete_option('bigfishgames_syndicate_last_posts');
delete_site_option('bigfishgames_syndicate_last_posts');
delete_option('bigfishgames_syndicate_aff_code');
delete_site_option('bigfishgames_syndicate_aff_code');
delete_option('bigfishgames_syndicate_template');
delete_site_option('bigfishgames_syndicate_template');
delete_option('bigfishgames_syndicate_title_prefix');
delete_site_option('bigfishgames_syndicate_title_prefix');
delete_option('bigfishgames_syndicate_title_suffix');
delete_site_option('bigfishgames_syndicate_title_suffix');
delete_option('bigfishgames_syndicate_pc_en');
delete_site_option('bigfishgames_syndicate_pc_en');
delete_option('bigfishgames_syndicate_pc_de');
delete_site_option('bigfishgames_syndicate_pc_de');
delete_option('bigfishgames_syndicate_pc_fr');
delete_site_option('bigfishgames_syndicate_pc_fr');
delete_option('bigfishgames_syndicate_pc_es');
delete_site_option('bigfishgames_syndicate_pc_es');
delete_option('bigfishgames_syndicate_mac_en');
delete_site_option('bigfishgames_syndicate_mac_en');
delete_option('bigfishgames_syndicate_allow_pings');
delete_site_option('bigfishgames_syndicate_allow_pings');
delete_option('bigfishgames_syndicate_allow_comments');
delete_site_option('bigfishgames_syndicate_allow_comments');

