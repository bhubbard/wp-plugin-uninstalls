#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'belingo_geo_exclude_nonobject'
wp option delete 'belingo_geo_url_type'
wp option delete 'belingo_geo_sitemap_per_page'
wp option delete 'belingo_geo_basic_popup_window_header'
wp option delete 'belingo_geo_basic_popup_window_text1'
wp option delete 'belingo_geo_basic_popup_window_text2'
wp option delete 'belingo_geo_basic_forced_slug_generation'
wp option delete 'belingo_geo_basic_forced_region_slug_generation'
wp option delete 'belingo_geo_exclude_posts'
wp option delete 'belingo_geo_exclude_post_types'
wp option delete 'belingo_geo_exclude_pages'
wp option delete 'belingo_geo_exclude_terms'
wp option delete 'belingo_geo_exclude_tags'
wp option delete 'belingo_geo_exclude_taxonomies'
wp option delete 'belingo_geo_basic_default_nonecity'
wp option delete 'belingo_geo_basic_finding_nonecity'
wp option delete 'belingo_geo_disable_subdomain_redirect'
wp option delete 'belingo_geo_disable_subdirectory_redirect'
wp option delete 'belingo_geo_basic_show_first_city_when_nonecity'
wp option delete 'belingo_geo_exclude_posts_in_archives'
wp option delete 'belingo_geo_basic_show_in_breadcrumbs'
wp option delete 'belingo_geo_basic_rewrite_cookie_by_url'
wp option delete 'belingo_geo_basic_rewrite_cookie_by_url_on_nogeo'
wp option delete 'belingo_geo_basic_forced_confirmation_city'
wp option delete 'belingo_geo_basic_default_text_nonecity'
wp option delete 'belingo_geo_basic_filter_links_by_url'
wp option delete 'belingo_geo_basic_woo_auto_detect_city_checkout'
wp option delete 'belingo_geo_basic_enable_search_in_popup'
wp option delete 'belingo_geo_basic_add_city_to_woo_page_title'
wp option delete 'belingo_geo_basic_enable_windows_in_footer'
wp option delete 'belingo_geo_exclude_all_posts'
wp option delete 'belingo_geo_exclude_all_pages'
wp option delete 'belingo_geo_basic_disable_url'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_addon_contacts'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_addon_contacts'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_addon_contacts'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_addon_contacts'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_eng'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_eng'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_eng'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_eng'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_padej1'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_padej1'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_padej1'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_padej1'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_padej2'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_padej2'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_padej2'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_padej2'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_padej3'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_padej3'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_padej3'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_padej3'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_phone_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_phone_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_phone_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_phone_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'city_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'city_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'city_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'city_address'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bg_regions_phone'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bg_regions_phone'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bg_regions_phone'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bg_regions_phone'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'bg_regions_address'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'bg_regions_address'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'bg_regions_address'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'bg_regions_address'"
