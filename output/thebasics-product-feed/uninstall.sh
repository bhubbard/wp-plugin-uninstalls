#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prime_feed_default_age_group'
wp option delete 'prime_feed_default_gender'
wp option delete 'prime_feed_require_images'
wp option delete 'prime_feed_color_attributes'
wp option delete 'prime_feed_size_attributes'
wp option delete 'prime_feed_size_case'
wp option delete 'prime_feed_memory_limit_warning'
wp option delete 'default_product_cat'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedcraft_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedcraft_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedcraft_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedcraft_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gtin'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_feedcraft_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_feedcraft_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_feedcraft_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_feedcraft_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_mpn'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmc_age_group'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmc_age_group'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmc_age_group'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmc_age_group'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gmc_gender'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gmc_gender'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gmc_gender'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gmc_gender'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_brand'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_color'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sku'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sku'"
