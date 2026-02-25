#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tcss_enable'
wp option delete 'tcss_business_type'
wp option delete 'tcss_business_name'
wp option delete 'tcss_business_email'
wp option delete 'tcss_business_description'
wp option delete 'tcss_phone'
wp option delete 'tcss_url'
wp option delete 'tcss_logo'
wp option delete 'tcss_image'
wp option delete 'tcss_street'
wp option delete 'tcss_city'
wp option delete 'tcss_region'
wp option delete 'tcss_postal'
wp option delete 'tcss_country'
wp option delete 'tcss_latitude'
wp option delete 'tcss_longitude'
wp option delete 'tcss_map_url'
wp option delete 'tcss_opening_hours'
wp option delete 'tcss_price_range'
wp option delete 'tcss_currencies'
wp option delete 'tcss_payments'
wp option delete 'tcss_og_enable'
wp option delete 'tcss_og_title'
wp option delete 'tcss_og_description'
wp option delete 'tcss_og_image'
wp option delete 'tcss_og_image_alt'
wp option delete 'tcss_og_fallback'
wp option delete 'tcss_webschema_enable'
wp option delete 'tcss_social_facebook'
wp option delete 'tcss_social_instagram'
wp option delete 'tcss_social_tiktok'
wp option delete 'tcss_social_twitter'
wp option delete 'tcss_social_linkedin'
wp option delete 'tcss_social_pinterest'
wp option delete 'tcss_social_youtube'
wp option delete 'tcss_woocommerce_archive_schema'
wp option delete 'tcss_single_post_schema'
wp option delete 'tcss_single_product_elementor_schema'
wp option delete 'tcss_fetch_priority'
wp option delete 'tcss_fetch_priority_class'
wp option delete 'tcss_fetch_priority_urls'
wp option delete 'tcss_woocommerce_single_image_alt'
wp option delete 'tcss_delete_options'
wp option delete 'tcss_sitemap_enable'
wp option delete 'tcss_sitemap_enable_index'
wp option delete 'tcss_sitemap_control'
wp option delete 'tcss_business_type_custom'
wp option delete 'tcss_og_prioritized'
wp option delete 'active_sitewide_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_tcss_seo_image_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_tcss_seo_image_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_tcss_seo_image_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_tcss_seo_image_id'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_price'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_stock_status'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_stock_status'"
