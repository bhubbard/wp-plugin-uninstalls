#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'permalink-manager-redirects'
wp option delete 'wpseo_permalinks'
wp option delete 'permalink-manager'
wp option delete 'permalink-manager-permastructs'
wp option delete 'permalink-manager-uris'
wp option delete 'trp_settings'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'custom_permalink_table'
wp option delete 'duplicate_post_blacklist'
wp option delete 'options_general_explore_listings_page'
wp option delete 'basepress_settings'
wp option delete 'woocommerce_shop_page_id'
wp option delete 'permalink-manager-external-redirects'
wp option delete 'permalink-manager-alerts'

# Delete Transients
wp transient delete 'pll_translated_slugs'

# Clear Cron Jobs
wp cron event delete 'wpai_regenerate_uris_after_import_event'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_primary_cat'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'auto_update_uri'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'auto_update_uri'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'auto_update_uri'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'auto_update_uri'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_canonical'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_seopress_robots_breadcrumbs'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_seopress_robots_breadcrumbs'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_seopress_robots_breadcrumbs'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_seopress_robots_breadcrumbs'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'rank_math_breadcrumb_title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'rank_math_breadcrumb_title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'rank_math_breadcrumb_title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'rank_math_breadcrumb_title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_bctitle'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_bctitle'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_bctitle'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_bctitle'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_external_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_external_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_external_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_external_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'external_redirect'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'external_redirect'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'external_redirect'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'external_redirect'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_case27_listing_type'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_case27_listing_type'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_case27_listing_type'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_case27_listing_type'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_job_location'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_job_location'"
