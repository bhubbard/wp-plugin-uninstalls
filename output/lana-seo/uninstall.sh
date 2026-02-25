#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'lana_seo_allowed_meta'
wp option delete 'lana_seo_allow_in_post_type'
wp option delete 'lana_seo_allow_in_taxonomy'
wp option delete 'lana_seo_automatic_generation_in'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_lana_seo_tags'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'lana_seo_tags'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'lana_seo_tags'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'lana_seo_tags'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'lana_seo_tags'"
