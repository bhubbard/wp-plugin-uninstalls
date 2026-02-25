#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cron'
wp option delete 'active_sitewide_plugins'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_w'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_size_h'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_crop'"
wp option delete 'seopress_toggle'
wp option delete 'seo_ultimate'
wp option delete 'sq_options'
wp option delete '_metaseo_settings'
wp option delete 'wpseo'
wp option delete 'wpseo_social'
wp option delete 'wpseo_taxonomy_meta'
wp option delete 'woocs_is_multiple_allowed'
wp option delete 'woocommerce_currency'
wp option delete 'woocommerce_enable_reviews'
wp option delete 'woocommerce_enable_review_rating'
wp option delete 'woocommerce_dimension_unit'
wp option delete 'woocommerce_weight_unit'
wp option delete 'wpm_pgw_structured_data_field'
wp option delete 'yith_wcbr_brands_taxonomy'
wp option delete 'rmp_options'
wp option delete 'postratings_options'
wp option delete 'postratings_max'
wp option delete 'judgeme_shop_token'
wp option delete 'yotpo_settings'

# Delete Transients
wp transient delete 'update_plugins'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'autodescription-term-settings'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'autodescription-term-settings'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'autodescription-term-settings'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'autodescription-term-settings'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratings_average'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratings_average'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratings_average'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratings_average'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ratings_users'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cwp_meta_box_check'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cwp_meta_box_check'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cwp_meta_box_check'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cwp_meta_box_check'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'locale'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'locale'"
