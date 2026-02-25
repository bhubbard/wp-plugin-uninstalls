#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'llms_full_txt_generator_initialized'
wp option delete 'llms_full_txt_generator_post_types'
wp option delete 'llms_full_txt_generator_post_types_order'
wp option delete 'llms_full_txt_generator_files_to_generate'
wp option delete 'llms_full_txt_generator_respect_seo'
wp option delete 'llms_full_txt_generator_include_urls'
wp option delete 'llms_full_txt_generator_exclude_urls'
wp option delete 'llms_full_txt_generator_include_admin_email'
wp option delete 'llms_full_txt_generator_admin_email'
wp option delete 'llms_full_txt_generator_enabled'
wp option delete 'llms_full_txt_generator_products_enabled'
wp option delete 'llms_full_txt_generator_include_excerpt'
wp option delete 'llms_full_txt_generator_company_name'
wp option delete 'llms_full_txt_generator_update_frequency'
wp option delete 'llms_full_txt_generator_multilingual'
wp option delete 'llms_full_txt_generator_show_product_price'
wp option delete 'llms_full_txt_generator_show_product_categories'
wp option delete 'llms_full_txt_generator_show_product_tags'
wp option delete 'llms_full_txt_generator_show_product_ratings'
wp option delete 'llms_full_txt_generator_show_product_url'
wp option delete 'llms_full_txt_generator_show_product_image_url'
wp option delete 'llms_full_txt_generator_exclude_product_categories'
wp option delete 'llms_full_txt_generator_exclude_product_tags'
wp option delete 'llms_full_txt_generator_show_post_categories'
wp option delete 'llms_full_txt_generator_show_post_tags'
wp option delete 'llms_full_txt_generator_exclude_post_categories'
wp option delete 'llms_full_txt_generator_exclude_post_tags'
wp option delete 'llms_full_txt_generator_company_description'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_meta-robots-noindex'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_robots'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_index'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_index'"
