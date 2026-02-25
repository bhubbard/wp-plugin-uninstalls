<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('wpotgg_emojis');
delete_site_option('wpotgg_emojis');
delete_option('wpotgg_blocks_css');
delete_site_option('wpotgg_blocks_css');
delete_option('wpotgg_duotone');
delete_site_option('wpotgg_duotone');
delete_option('wpotgg_wlwlink');
delete_site_option('wpotgg_wlwlink');
delete_option('wpotgg_rsdlink');
delete_site_option('wpotgg_rsdlink');
delete_option('wpotgg_wpgen');
delete_site_option('wpotgg_wpgen');
delete_option('wpotgg_feedlinks');
delete_site_option('wpotgg_feedlinks');
delete_option('wpotgg_restlink');
delete_site_option('wpotgg_restlink');
delete_option('wpotgg_oembed');
delete_site_option('wpotgg_oembed');
delete_option('wpotgg_shortlink');
delete_site_option('wpotgg_shortlink');
delete_option('wpotgg_prefetch');
delete_site_option('wpotgg_prefetch');
delete_option('wpotgg_autosave');
delete_site_option('wpotgg_autosave');
delete_option('wpotgg_moderation_links');
delete_site_option('wpotgg_moderation_links');
delete_option('wpotgg_redirect');
delete_site_option('wpotgg_redirect');
delete_option('wpotgg_classiceditor');
delete_site_option('wpotgg_classiceditor');
delete_option('wpotgg_classicwidgets');
delete_site_option('wpotgg_classicwidgets');
delete_option('wpotgg_xmlrpc');
delete_site_option('wpotgg_xmlrpc');
delete_option('wpotgg_urlfield');
delete_site_option('wpotgg_urlfield');
delete_option('wpotgg_authorsitemap');
delete_site_option('wpotgg_authorsitemap');
delete_option('wpotgg_categorysitemap');
delete_site_option('wpotgg_categorysitemap');
delete_option('wpotgg_imagemeta');
delete_site_option('wpotgg_imagemeta');
delete_option('wpotgg_emailverification');
delete_site_option('wpotgg_emailverification');
delete_option('wpotgg_excerptmore');
delete_site_option('wpotgg_excerptmore');
delete_option('wpotgg_excerptlength');
delete_site_option('wpotgg_excerptlength');
delete_option('wpotgg_trash');
delete_site_option('wpotgg_trash');
delete_option('wpotgg_revisions');
delete_site_option('wpotgg_revisions');

