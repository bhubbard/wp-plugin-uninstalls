<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('bib_templates');
delete_site_option('bib_templates');
delete_option('bib_version');
delete_site_option('bib_version');
delete_option('bib_more_link_text');
delete_site_option('bib_more_link_text');
delete_option('bib_hide_category');
delete_site_option('bib_hide_category');
delete_option('bib_hide_category_from_rss');
delete_site_option('bib_hide_category_from_rss');
delete_option('bib_debug');
delete_site_option('bib_debug');
delete_option('bib_html');
delete_site_option('bib_html');
delete_option('bib_post_template');
delete_site_option('bib_post_template');
delete_option('bib_last_tab');
delete_site_option('bib_last_tab');
delete_option('bib_text_previous');
delete_site_option('bib_text_previous');
delete_option('bib_text_next');
delete_site_option('bib_text_next');
delete_option('bib_text_page');
delete_site_option('bib_text_page');
delete_option('bib_text_delim');
delete_site_option('bib_text_delim');
delete_option('bib_show_dots_after');
delete_site_option('bib_show_dots_after');
delete_option('bib_style_selected');
delete_site_option('bib_style_selected');
delete_option('bib_style_not_selected');
delete_site_option('bib_style_not_selected');
delete_option('bib_avatar_size');
delete_site_option('bib_avatar_size');
delete_option('bib_meta_keys');
delete_site_option('bib_meta_keys');
delete_option('bib_no_collapse');
delete_site_option('bib_no_collapse');

