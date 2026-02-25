#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'seraph_secretKey'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'seraph_accel_%'"
wp option delete 'nginx_cache_path'
wp option delete 'gd_system_last_cache_flush'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_tmMax'"
wp option delete 'seraph_accel_status'
wp option delete 'icl_sitepress_settings'
wp option delete 'polylang'
wp option delete 'multiple-domain-domains'
wp option delete 'xts-woodmart-options'
wp option delete 'themify_data'
wp option delete 'thegem_theme_options'
wp option delete 'superio_theme_options'
wp option delete 'wp-smush-settings'
wp option delete 'a3_lazy_load_global_settings'
wp option delete 'optml_settings'
wp option delete 'revslider-global-settings'
wp option delete 'wpo_cache_config'
wp option delete 'jetpack_active_modules'
wp option delete 'litespeed.conf.cache'
wp option delete 'siteground_optimizer_enable_cache'
wp option delete 'perfmatters_options'
wp option delete 'wbcr_clearfy_deactive_preinstall_components'
wp option delete 'wbcr_clearfy_enable_cache'
wp option delete 'wbcr_clearfy_css_optimize'
wp option delete 'wbcr_clearfy_css_aggregate'
wp option delete 'wbcr_clearfy_css_include_inline'
wp option delete 'wbcr_clearfy_css_defer'
wp option delete 'wbcr_clearfy_css_inline'
wp option delete 'wbcr_clearfy_js_optimize'
wp option delete 'wbcr_clearfy_js_aggregate'
wp option delete 'wbcr_clearfy_js_include_inline'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '_seraph_accel_%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '_seraph_accel_%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '_seraph_accel_%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '_seraph_accel_%'"
