-- WordPress Plugin Uninstall SQL Script

-- Delete Options & Transients
DELETE FROM wp_options WHERE option_name IN ('seraph_secretKey', 'nginx_cache_path', 'gd_system_last_cache_flush', 'seraph_accel_status', 'icl_sitepress_settings', 'polylang', 'multiple-domain-domains', 'xts-woodmart-options', 'themify_data', 'thegem_theme_options', 'superio_theme_options', 'wp-smush-settings', 'a3_lazy_load_global_settings', 'optml_settings', 'revslider-global-settings', 'wpo_cache_config', 'jetpack_active_modules', 'litespeed.conf.cache', 'siteground_optimizer_enable_cache', 'perfmatters_options', 'wbcr_clearfy_deactive_preinstall_components', 'wbcr_clearfy_enable_cache', 'wbcr_clearfy_css_optimize', 'wbcr_clearfy_css_aggregate', 'wbcr_clearfy_css_include_inline', 'wbcr_clearfy_css_defer', 'wbcr_clearfy_css_inline', 'wbcr_clearfy_js_optimize', 'wbcr_clearfy_js_aggregate', 'wbcr_clearfy_js_include_inline');
DELETE FROM wp_options WHERE option_name LIKE '%_size_w';
DELETE FROM wp_options WHERE option_name LIKE '%_size_h';
DELETE FROM wp_options WHERE option_name LIKE 'seraph_accel_%';
DELETE FROM wp_options WHERE option_name LIKE '%_tmMax';

-- Delete Metadata
DELETE FROM wp_postmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_usermeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_termmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_commentmeta WHERE meta_key IN ('_wp_attachment_image_alt');
DELETE FROM wp_postmeta WHERE meta_key LIKE '_seraph_accel_%';
DELETE FROM wp_usermeta WHERE meta_key LIKE '_seraph_accel_%';
DELETE FROM wp_termmeta WHERE meta_key LIKE '_seraph_accel_%';
DELETE FROM wp_commentmeta WHERE meta_key LIKE '_seraph_accel_%';

