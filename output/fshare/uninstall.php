<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fshare_skip_single');
delete_site_option('fshare_skip_single');
delete_option('fs_single_pages');
delete_site_option('fs_single_pages');
delete_option('fs_single_posts');
delete_site_option('fs_single_posts');
delete_option('fs_active_align');
delete_site_option('fs_active_align');
delete_option('fs_intro_height');
delete_site_option('fs_intro_height');
delete_option('fs_intro_text');
delete_site_option('fs_intro_text');
delete_option('fs_facebook_share');
delete_site_option('fs_facebook_share');
delete_option('fs_twitter_share');
delete_site_option('fs_twitter_share');
delete_option('fs_xing_share');
delete_site_option('fs_xing_share');
delete_option('fs_pinterest_share');
delete_site_option('fs_pinterest_share');
delete_option('fs_whatsapp_share');
delete_site_option('fs_whatsapp_share');
delete_option('fs_pocket_share');
delete_site_option('fs_pocket_share');
delete_option('fs_feedly_share');
delete_site_option('fs_feedly_share');
delete_option('fs_active_privacy');
delete_site_option('fs_active_privacy');
delete_option('fs_deactivate_supportlink');
delete_site_option('fs_deactivate_supportlink');
delete_option('fs_position');
delete_site_option('fs_position');
delete_option('fs_privacy_text');
delete_site_option('fs_privacy_text');
delete_option('fs_privacy_link_intro');
delete_site_option('fs_privacy_link_intro');

