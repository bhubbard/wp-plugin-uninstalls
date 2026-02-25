<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('mdbg_mirror');
delete_site_option('mdbg_mirror');
delete_option('mdbg_function');
delete_site_option('mdbg_function');
delete_option('mdbg_simptrad');
delete_site_option('mdbg_simptrad');
delete_option('mdbg_autolink_the_content');
delete_site_option('mdbg_autolink_the_content');
delete_option('mdbg_autolink_the_excerpt');
delete_site_option('mdbg_autolink_the_excerpt');
delete_option('mdbg_autolink_comment_text');
delete_site_option('mdbg_autolink_comment_text');
delete_option('mdbg_tag_hanzi');
delete_site_option('mdbg_tag_hanzi');
delete_option('mdbg_tag_pinyin');
delete_site_option('mdbg_tag_pinyin');
delete_option('mdbg_pinyin_mode');
delete_site_option('mdbg_pinyin_mode');

