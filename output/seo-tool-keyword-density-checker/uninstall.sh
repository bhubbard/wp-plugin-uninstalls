#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'keyword_density_checker_configuration'
wp option delete 'kdc_version'
wp option delete 'kdc_default_language'
wp option delete 'kdc_filter_stopwords'
wp option delete 'kdc_max_list_items'
wp option delete 'kdc_automatic_update'
wp option delete 'kdc_update_interval'
wp option delete 'kdc_2word_phrases'
wp option delete 'kdc_3word_phrases'
wp option delete 'kdc_meta_keywords_count'
wp option delete 'kdc_max_keywords_count'
wp option delete 'kdc_keywords_length'
wp option delete 'kdc_authors_can_change_content_language'
wp option delete 'kdc_authors_can_disable_stopword_filter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'kdc_%'"
wp option delete 'kdc_max_keywords_length'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'kdc_metadata'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'kdc_metadata'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'kdc_metadata'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'kdc_metadata'"
