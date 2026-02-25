<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('fvm_plugin_meta');
delete_site_option('fvm_plugin_meta');
delete_option('fvm_settings');
delete_site_option('fvm_settings');
delete_option('gd_system_last_cache_flush');
delete_site_option('gd_system_last_cache_flush');
delete_option('fvm_last_cache_update');
delete_site_option('fvm_last_cache_update');
delete_option('fastvelocity_upgraded');
delete_site_option('fastvelocity_upgraded');
delete_option('fastvelocity_plugin_version');
delete_site_option('fastvelocity_plugin_version');
delete_option('fastvelocity_min_change_cache_path');
delete_site_option('fastvelocity_min_change_cache_path');
delete_option('fastvelocity_min_change_cache_base_url');
delete_site_option('fastvelocity_min_change_cache_base_url');
delete_option('fastvelocity_min_skip_html_minification');
delete_site_option('fastvelocity_min_skip_html_minification');
delete_option('fastvelocity_min_strip_htmlcomments');
delete_site_option('fastvelocity_min_strip_htmlcomments');
delete_option('fastvelocity_min_fvm_cdn_url');
delete_site_option('fastvelocity_min_fvm_cdn_url');
delete_option('fastvelocity_min_default_protocol');
delete_site_option('fastvelocity_min_default_protocol');
delete_option('fastvelocity_preserve_settings_on_uninstall');
delete_site_option('fastvelocity_preserve_settings_on_uninstall');
delete_option('fastvelocity_min_force_inline_css');
delete_site_option('fastvelocity_min_force_inline_css');
delete_option('fastvelocity_min_remove_googlefonts');
delete_site_option('fastvelocity_min_remove_googlefonts');
delete_option('fastvelocity_min_exclude_defer_jquery');
delete_site_option('fastvelocity_min_exclude_defer_jquery');
delete_option('fastvelocity_min_ignore');
delete_site_option('fastvelocity_min_ignore');
delete_option('fvm-last-cache-update');
delete_site_option('fvm-last-cache-update');
delete_option('fastvelocity_min_blacklist');
delete_site_option('fastvelocity_min_blacklist');
delete_option('fastvelocity_min_ignorelist');
delete_site_option('fastvelocity_min_ignorelist');
delete_option('fastvelocity_min_excludecsslist');
delete_site_option('fastvelocity_min_excludecsslist');
delete_option('fastvelocity_min_excludejslist');
delete_site_option('fastvelocity_min_excludejslist');
delete_option('fastvelocity_min_enable_purgemenu');
delete_site_option('fastvelocity_min_enable_purgemenu');
delete_option('fastvelocity_min_disable_js_merge');
delete_site_option('fastvelocity_min_disable_js_merge');
delete_option('fastvelocity_min_disable_css_merge');
delete_site_option('fastvelocity_min_disable_css_merge');
delete_option('fastvelocity_min_disable_js_minification');
delete_site_option('fastvelocity_min_disable_js_minification');
delete_option('fastvelocity_min_disable_css_minification');
delete_site_option('fastvelocity_min_disable_css_minification');
delete_option('fastvelocity_min_remove_print_mediatypes');
delete_site_option('fastvelocity_min_remove_print_mediatypes');
delete_option('fastvelocity_min_skip_cssorder');
delete_site_option('fastvelocity_min_skip_cssorder');
delete_option('fastvelocity_min_skip_google_fonts');
delete_site_option('fastvelocity_min_skip_google_fonts');
delete_option('fastvelocity_min_skip_emoji_removal');
delete_site_option('fastvelocity_min_skip_emoji_removal');
delete_option('fastvelocity_fvm_clean_header_one');
delete_site_option('fastvelocity_fvm_clean_header_one');
delete_option('fastvelocity_min_enable_defer_js');
delete_site_option('fastvelocity_min_enable_defer_js');
delete_option('fastvelocity_min_force_inline_css_footer');
delete_site_option('fastvelocity_min_force_inline_css_footer');
delete_option('fastvelocity_min_defer_for_pagespeed');
delete_site_option('fastvelocity_min_defer_for_pagespeed');
delete_option('fastvelocity_min_defer_for_pagespeed_optimize');
delete_site_option('fastvelocity_min_defer_for_pagespeed_optimize');
delete_option('fastvelocity_min_exclude_defer_login');
delete_site_option('fastvelocity_min_exclude_defer_login');
delete_option('fastvelocity_min_skip_defer_lists');
delete_site_option('fastvelocity_min_skip_defer_lists');
delete_option('fastvelocity_min_fvm_fix_editor');
delete_site_option('fastvelocity_min_fvm_fix_editor');
delete_option('fastvelocity_min_loadcss');
delete_site_option('fastvelocity_min_loadcss');
delete_option('fastvelocity_min_fvm_removecss');
delete_site_option('fastvelocity_min_fvm_removecss');
delete_option('fastvelocity_enabled_css_preload');
delete_site_option('fastvelocity_enabled_css_preload');
delete_option('fastvelocity_enabled_js_preload');
delete_site_option('fastvelocity_enabled_js_preload');
delete_option('fastvelocity_fontawesome_method');
delete_site_option('fastvelocity_fontawesome_method');
delete_option('fastvelocity_gfonts_method');
delete_site_option('fastvelocity_gfonts_method');

// Delete Transients
delete_transient('fvm_table_checker');
delete_site_transient('fvm_table_checker');
global $wpdb;
$transients = $wpdb->get_col( $wpdb->prepare( "SELECT option_name FROM {$wpdb->options} WHERE option_name LIKE %s OR option_name LIKE %s", '_transient_fvm_admin_notice_%', '_site_transient_fvm_admin_notice_%' ) );
foreach ( $transients as $transient ) {
	delete_option( $transient );
}
delete_transient('fvm_admin_notice');
delete_site_transient('fvm_admin_notice');

