#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'waalg_enable_asin'
wp option delete 'waalg_enable_keyw'
wp option delete 'waalg_affilate_id'
wp option delete 'waalg_ascsubtag'
wp option delete 'waalg_fallback'
wp option delete 'waalg_add_url'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'woboq_amazon_link_globalizer_affiliate_id_%'"
wp option delete 'waalg_enabled_asin'
wp option delete 'waalg_enabled_keyw'

