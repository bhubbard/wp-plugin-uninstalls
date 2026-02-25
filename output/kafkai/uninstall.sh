#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%imported_articles'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%api_user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%settings_json'"
wp option delete 'kafkaiwp_settings'
wp option delete 'kafkaiwp_api_user'
wp option delete 'kafkaiwp_token'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%temporary_openapi_data' OR option_name LIKE '_site_transient_%temporary_openapi_data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%new_niches' OR option_name LIKE '_site_transient_%new_niches'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%new_languages' OR option_name LIKE '_site_transient_%new_languages'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kafkai_article_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kafkai_article_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kafkai_article_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kafkai_article_id'"
