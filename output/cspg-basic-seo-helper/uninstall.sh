#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cspgbase_default_title_template'
wp option delete 'cspgbase_default_description_template'
wp option delete 'bsh_post_title_template'
wp option delete 'bsh_post_description_template'
wp option delete 'bsh_page_title_template'
wp option delete 'bsh_page_description_template'
wp option delete 'bsh_home_title_template'
wp option delete 'bsh_home_description_template'
wp option delete 'bsh_category_title_template'
wp option delete 'bsh_category_description_template'
wp option delete 'bsh_tag_title_template'
wp option delete 'bsh_tag_description_template'
wp option delete 'bsh_author_title_template'
wp option delete 'bsh_author_description_template'
wp option delete 'bsh_archive_title_template'
wp option delete 'bsh_archive_description_template'
wp option delete 'bsh_search_title_template'
wp option delete 'bsh_search_description_template'
wp option delete 'bsh_404_title_template'
wp option delete 'bsh_404_description_template'
wp option delete 'cspgbase_options'
wp option delete 'cspgbase_enable_open_graph'
wp option delete 'cspgbase_enable_twitter_cards'
wp option delete 'cspgbase_enable_canonical'
wp option delete 'cspgbase_enable_author_meta'
wp option delete 'cspgbase_sitemap_settings'
wp option delete 'cspgbase_default_og_title_template'
wp option delete 'cspgbase_default_og_description_template'
wp option delete 'cspgbase_fallback_text'
wp option delete 'cspgbase_title_separator'
wp option delete 'cspgbase_db_version'
wp option delete 'cspg_basic_seo_helper_sitemap_rewrite_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basic_seo_helper_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basic_seo_helper_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basic_seo_helper_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basic_seo_helper_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basic_seo_helper_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basic_seo_helper_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basic_seo_helper_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basic_seo_helper_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basic_seo_helper_og_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basic_seo_helper_og_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basic_seo_helper_og_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basic_seo_helper_og_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basic_seo_helper_og_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basic_seo_helper_og_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basic_seo_helper_og_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basic_seo_helper_og_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basic_seo_helper_twitter_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basic_seo_helper_twitter_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basic_seo_helper_twitter_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basic_seo_helper_twitter_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basic_seo_helper_twitter_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basic_seo_helper_twitter_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basic_seo_helper_twitter_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basic_seo_helper_twitter_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basic_seo_helper_schema_enabled'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basic_seo_helper_schema_enabled'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basic_seo_helper_schema_enabled'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basic_seo_helper_schema_enabled'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_basic_seo_helper_image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_basic_seo_helper_image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_basic_seo_helper_image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_basic_seo_helper_image'"
