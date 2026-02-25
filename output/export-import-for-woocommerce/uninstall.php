<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('_woie_settings_obj');
delete_site_option('_woie_settings_obj');
delete_option('woie_options');
delete_site_option('woie_options');
delete_option('woie_filter_meta_keys');
delete_site_option('woie_filter_meta_keys');
delete_option('woie_versions_type');
delete_site_option('woie_versions_type');

