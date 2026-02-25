<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('modern_footnotes_settings');
delete_site_option('modern_footnotes_settings');
delete_option('modern_footnotes_include_footnote_list_at_end_of_rss_content_default_value_has_been_set');
delete_site_option('modern_footnotes_include_footnote_list_at_end_of_rss_content_default_value_has_been_set');
delete_option('modern_footnotes_use_expandable_footnotes_on_desktop_instead_of_tooltips_has_been_migrated');
delete_site_option('modern_footnotes_use_expandable_footnotes_on_desktop_instead_of_tooltips_has_been_migrated');

