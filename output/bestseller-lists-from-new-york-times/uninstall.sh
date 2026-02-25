#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'nyt_bestseller_listings_apiKey'
wp option delete 'nyt_bestseller_listings_defaultList'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_apiKey'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_CatalogLinkFormat'"
wp option delete 'bestseller-lists-nyt-plugin-version'
wp option delete '{self::}_apiKey'
wp option delete '{self::}_defaultList'
wp option delete '{self::}_CatalogLinkFormat'

