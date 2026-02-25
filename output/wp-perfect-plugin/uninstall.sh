#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'w3p_image_alt'
wp option delete 'w3p_enable_sitemap'
wp option delete 'w3p_enable_sitemap_users'
wp option delete 'w3p_sitemap_links'
wp option delete 'w3p_enable_title_description'
wp option delete 'w3p_og'
wp option delete 'w3p_kg_type'
wp option delete 'w3p_kg_name'
wp option delete 'w3p_kg_logo'
wp option delete 'w3p_kg_same_as'
wp option delete 'w3p_schema_breadcrumbs'
wp option delete 'w3p_noindex_queries'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'w3p_enable_sitemap_%'"
wp option delete 'w3p_enable_yoast_migrator'
wp option delete 'w3p_enable_rankmath_migrator'
wp option delete 'w3p_google_webmaster'
wp option delete 'w3p_bing_webmaster'
wp option delete 'w3p_pinterest_webmaster'
wp option delete 'w3p_twitter_author'
wp option delete 'w3p_local'
wp option delete 'w3p_local_locality'
wp option delete 'w3p_local_region'
wp option delete 'w3p_local_address'
wp option delete 'w3p_local_postal_code'
wp option delete 'w3p_local_country'
wp option delete 'w3p_local_country_code'
wp option delete 'w3p_telephone'
wp option delete 'w3p_local_image_1'
wp option delete 'w3p_local_image_2'
wp option delete 'w3p_fb_default_image'
wp option delete 'w3p_image_license_url'
wp option delete 'w3p_image_acquire_license_url'
wp option delete 'w3p_module_mat'
wp option delete 'w3p_module_seo'
wp option delete 'w3p_sitemap_types'
wp option delete 'wot-verification'
wp option delete 'w3p_topic_clustering'
wp option delete 'w3p_enable_link_whisper'
wp option delete 'w3p_link_repeater'
wp option delete 'w3p_yandex_webmaster'
wp option delete 'w3p_baidu_webmaster'
wp option delete 'w3p_wot_webmaster'
wp option delete 'w3p_majestic_webmaster'
wp option delete 'w3p_fb_app_id'
wp option delete 'w3p_homepage_description'
wp option delete 'w3p_fb_admin_id'
wp option delete 'w3p_od'
wp option delete 'w3p_google_analytics'
wp option delete 'w3p_google_tag_manager'
wp option delete 'w3p_head_section'
wp option delete 'w3p_footer_section'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_w3p_kg_logo_dimensions_%' OR option_name LIKE '_site_transient_w3p_kg_logo_dimensions_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_w3p_kg_logo_attachment_id_%' OR option_name LIKE '_site_transient_w3p_kg_logo_attachment_id_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w3p_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w3p_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w3p_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w3p_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w3p_excerpt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w3p_excerpt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w3p_excerpt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w3p_excerpt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_w3p_noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_w3p_noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_w3p_noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_w3p_noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_metadesc'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_description'"
