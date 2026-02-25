#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ebay-feeds-hide-results-from-search-engines'
wp option delete 'ebay-feeds-for-wordpress-default'
wp option delete 'ebay-feeds-for-wordpress-default-number'
wp option delete 'ebay-feeds-for-wordpress-link'
wp option delete 'ebay-feeds-for-wordpress-link-open-blank'
wp option delete 'ebay-feed-for-wordpress-flush-cache'
wp option delete 'ebay-feeds-for-wordpress-nofollow-links'
wp option delete 'ebay-feeds-for-wordpress-debug'
wp option delete 'ebay-feeds-for-wordpress-item-div-wrapper'
wp option delete 'ebay-feeds-for-wordpress-disable-header'
wp option delete 'ebay-feed-for-wordpress-ssl'
wp option delete 'ebay_feeds_for_wordpress_fallback'
wp option delete 'ebay-feeds-for-wordpress-default-header'
wp option delete 'ebay-feeds-for-wordpress-imax-max-width'
wp option delete 'ebay-feed-for-wordpress-force-feed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'ewpf_ignore_ar_warning'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'ewpf_ignore_ar_warning'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'ewpf_ignore_ar_warning'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'ewpf_ignore_ar_warning'"
