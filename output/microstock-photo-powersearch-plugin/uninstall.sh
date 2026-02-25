#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mps_power_search_configuration'
wp option delete 'mps_version'
wp option delete 'mps_default_language'
wp option delete 'mps_filter_stopwords'
wp option delete 'mps_max_list_items'
wp option delete 'mps_automatic_update'
wp option delete 'mps_update_interval'
wp option delete 'mps_2word_phrases'
wp option delete 'mps_3word_phrases'
wp option delete 'mps_meta_keywords_count'
wp option delete 'mps_max_keywords_count'
wp option delete 'mps_keywords_length'
wp option delete 'mps_authors_can_change_content_language'
wp option delete 'mps_authors_can_disable_stopword_filter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'mps_%'"
wp option delete 'mps_max_keywords_length'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mps_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mps_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mps_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mps_metadata'"
