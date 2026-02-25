#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'myaio_install_log'
wp option delete 'myaio_setup_state'
wp option delete 'myaio_setup_complete'
wp option delete 'myaio_install_state'
wp option delete 'myaio_install_step'
wp option delete 'myaio_sac_api_verified'
wp option delete 'myaio_sac_api_key'
wp option delete 'myaio_website_id'
wp option delete 'myaio_seo_migration_report'
wp option delete 'sac_gtm_header_script'
wp option delete 'sac_gtm_footer_script'
wp option delete 'wpseo_titles'
wp option delete 'wpseo_social'
wp option delete 'wpseo_xml'
wp option delete 'rank_math_options_titles'
wp option delete 'rank_math_options_general'
wp option delete 'rank_math_options_sitemap'
wp option delete 'aioseo_options'
wp option delete 'the_seo_framework_settings'
wp option delete 'myaio_sac_footer_links'
wp option delete 'myaio_sac_custom_canonicals'
wp option delete 'myaio_sac_enable_tracker'
wp option delete 'myaio_sac_crawler_stats'
wp option delete 'myaio_sac_ga4_property_id'
wp option delete 'myaio_sac_gsc_site_url'
wp option delete 'myaio_sac_psi_api_key'
wp option delete 'myaio_sac_ads_dev_token'
wp option delete 'myaio_sac_ads_customer_id'
wp option delete 'myaio_sac_ads_login_customer_id'
wp option delete 'sac_api_verified'
wp option delete 'sac_api_key'
wp option delete 'sac_enable_robots_meta'
wp option delete 'sac_robots_meta_content'
wp option delete 'myaio_image_alt_map'
wp option delete 'myaio_sac_open_graph_overrides'
wp option delete 'myaio_sac_twitter_card_data'
wp option delete 'myaio_sac_sitemap_rewrite_flushed'
wp option delete 'sac_last_sitemap_url'
wp option delete 'sac_prev_sitemap_url'
wp option delete 'sac_prev_sitemap_mtime'
wp option delete 'sac_last_sitemap_mtime'
wp option delete 'myaio_mu_loader_failed'
wp option delete 'sac_custom_canonicals'
wp option delete 'sac_open_graph_overrides'
wp option delete 'sac_twitter_card_data'

# Delete Transients
wp transient delete '_myaio_do_installer_redirect'
wp transient delete '_sac_do_redirect'
wp transient delete 'myaio_seo_block_plugins'
wp transient delete 'myaio_sac_check_sitemap_cache_v1'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_custom_raw_html'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_custom_raw_html'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_custom_raw_html'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_custom_raw_html'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_canonical_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_canonical_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_canonical_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_canonical_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_aioseo_robots_meta'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_aioseo_robots_meta'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_aioseo_robots_meta'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_aioseo_robots_meta'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_schema_Builder'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_schema_Builder'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_schema_Builder'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_schema_Builder'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myaio_seo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myaio_seo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myaio_seo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myaio_seo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myaio_meta_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myaio_meta_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myaio_meta_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myaio_meta_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myaio_meta_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myaio_meta_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myaio_meta_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myaio_meta_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myaio_seo_keywords'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myaio_seo_keywords'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myaio_seo_keywords'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myaio_seo_keywords'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_myaio_seo_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_myaio_seo_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_myaio_seo_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_myaio_seo_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_edit_mode'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_elementor_data'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_elementor_data'"
