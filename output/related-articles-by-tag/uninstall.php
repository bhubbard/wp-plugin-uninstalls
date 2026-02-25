<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('related_articles_by_tag_mode');
delete_site_option('related_articles_by_tag_mode');
delete_option('related_articles_by_tag_title_type');
delete_site_option('related_articles_by_tag_title_type');
delete_option('related_articles_by_tag_title');
delete_site_option('related_articles_by_tag_title');
delete_option('related_articles_by_tag_apply');
delete_site_option('related_articles_by_tag_apply');
delete_option('related_articles_by_tag_order');
delete_site_option('related_articles_by_tag_order');

