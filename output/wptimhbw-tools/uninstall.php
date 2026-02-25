<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wtht_disable_gutenberg');
delete_site_option('wtht_disable_gutenberg');
delete_option('wtht_post_revisions');
delete_site_option('wtht_post_revisions');
delete_option('wtht_wordpres_china_mirror');
delete_site_option('wtht_wordpres_china_mirror');
delete_option('wtht_image_center');
delete_site_option('wtht_image_center');
delete_option('wtht_rewrite_page_permalink');
delete_site_option('wtht_rewrite_page_permalink');
delete_option('wtht_domain');
delete_site_option('wtht_domain');
delete_option('wtht_cdndomain');
delete_site_option('wtht_cdndomain');
delete_option('wtht_exts');
delete_site_option('wtht_exts');
delete_option('tht_gravatar_url');
delete_site_option('tht_gravatar_url');
delete_option('wtht_gravatar_url');
delete_site_option('wtht_gravatar_url');
delete_option('wtht_baidu_tongji');
delete_site_option('wtht_baidu_tongji');
delete_option('wtht_google_tongji');
delete_site_option('wtht_google_tongji');
delete_option('wptimhbw_tools');
delete_site_option('wptimhbw_tools');

