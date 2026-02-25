<?php

// If uninstall not called from WordPress, then exit.
if ( ! defined( 'WP_UNINSTALL_PLUGIN' ) ) {
	exit;
}

// Delete Options
delete_option('yith_wcwl_wishlist_page_id');
delete_site_option('yith_wcwl_wishlist_page_id');
delete_option('WpFastestCacheExclude');
delete_site_option('WpFastestCacheExclude');
delete_option('WpFastestCachePreLoad');
delete_site_option('WpFastestCachePreLoad');
delete_option('WpFastestCache');
delete_site_option('WpFastestCache');
delete_option('views_options');
delete_site_option('views_options');
delete_option('elementor_element_cache_ttl');
delete_site_option('elementor_element_cache_ttl');
delete_option('elementor_experiment-e_element_cache');
delete_site_option('elementor_experiment-e_element_cache');
delete_option('elementor_css_print_method');
delete_site_option('elementor_css_print_method');
delete_option('WpFastestCacheCDN');
delete_site_option('WpFastestCacheCDN');
delete_option('polylang');
delete_site_option('polylang');
delete_option('WpFastestCacheCSP');
delete_site_option('WpFastestCacheCSP');
delete_option('WpFastestCacheVarnish');
delete_site_option('WpFastestCacheVarnish');
delete_option('WpFastestCache_autocache');
delete_site_option('WpFastestCache_autocache');
delete_option('WpFastestCachePathSettings');
delete_site_option('WpFastestCachePathSettings');
delete_option('WpFcDeleteCacheLogs');
delete_site_option('WpFcDeleteCacheLogs');
delete_option('WpFastestCacheCSS');
delete_site_option('WpFastestCacheCSS');
delete_option('WpFastestCacheCSSSIZE');
delete_site_option('WpFastestCacheCSSSIZE');
delete_option('WpFastestCacheJS');
delete_site_option('WpFastestCacheJS');
delete_option('WpFastestCacheJSSIZE');
delete_site_option('WpFastestCacheJSSIZE');
delete_option('WpFastestCacheXML');
delete_site_option('WpFastestCacheXML');
delete_option('WpFastestCacheXMLSIZE');
delete_site_option('WpFastestCacheXMLSIZE');
delete_option('WpFastestCacheSVG');
delete_site_option('WpFastestCacheSVG');
delete_option('WpFastestCacheSVGSIZE');
delete_site_option('WpFastestCacheSVGSIZE');
delete_option('WpFastestCacheJSON');
delete_site_option('WpFastestCacheJSON');
delete_option('WpFastestCacheJSONSIZE');
delete_site_option('WpFastestCacheJSONSIZE');
delete_option('WpFastestCacheWOFF');
delete_site_option('WpFastestCacheWOFF');
delete_option('WpFastestCacheWOFFSIZE');
delete_site_option('WpFastestCacheWOFFSIZE');
delete_option('WpFastestCacheToolbarSettings');
delete_site_option('WpFastestCacheToolbarSettings');
delete_option('wpfc_country_code');
delete_site_option('wpfc_country_code');
delete_option('WpFcServerUrl');
delete_site_option('WpFcServerUrl');
delete_option('WpFcLastImageId');
delete_site_option('WpFcLastImageId');
delete_option('WpFcImgOptNonce');
delete_site_option('WpFcImgOptNonce');
delete_option('wpfc-group');
delete_site_option('wpfc-group');
delete_option('WpFc_credit');
delete_site_option('WpFc_credit');
delete_option('WpFc_api_key');
delete_site_option('WpFc_api_key');
delete_option('wpfc_premium_update_info');
delete_site_option('wpfc_premium_update_info');
delete_option('hide_my_wp');
delete_site_option('hide_my_wp');
delete_option('falke_mdm_mappings');
delete_site_option('falke_mdm_mappings');
delete_option('WpFastestCacheHTML');
delete_site_option('WpFastestCacheHTML');
delete_option('WpFastestCacheHTMLSIZE');
delete_site_option('WpFastestCacheHTMLSIZE');
delete_option('WpFastestCacheMOBILE');
delete_site_option('WpFastestCacheMOBILE');
delete_option('WpFastestCacheMOBILESIZE');
delete_site_option('WpFastestCacheMOBILESIZE');
delete_option('active_sitewide_plugins');
delete_site_option('active_sitewide_plugins');

// Delete Transients
delete_transient('wpfc_premium_update_info');
delete_site_transient('wpfc_premium_update_info');

// Clear Cron Jobs
wp_clear_scheduled_hook('wp_fastest_cache_Preload');
wp_clear_scheduled_hook('wpfc_db_auto_cleanup');
wp_clear_scheduled_hook('wp_fastest_cache');

