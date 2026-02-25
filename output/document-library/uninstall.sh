#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-active'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-singular-name'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-slug'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-hierarchical'"
wp option delete 'document-field-dauthor-name'
wp option delete 'document-field-dauthor-singular-name'
wp option delete 'document-field-dauthor-slug'
wp option delete 'document-field-dauthor-hierarchical'
wp option delete 'document-field-dauthor-active'
wp option delete 'document-field-session-name'
wp option delete 'document-field-session-singular-name'
wp option delete 'document-field-session-slug'
wp option delete 'document-field-session-hierarchical'
wp option delete 'document-field-session-active'
wp option delete 'document-field-keyword-name'
wp option delete 'document-field-keyword-singular-name'
wp option delete 'document-field-keyword-slug'
wp option delete 'document-field-keyword-hierarchical'
wp option delete 'document-field-keyword-active'
wp option delete 'document-field-country-name'
wp option delete 'document-field-country-singular-name'
wp option delete 'document-field-country-slug'
wp option delete 'document-field-country-hierarchical'
wp option delete 'document-field-country-active'
wp option delete 'document-field-language-name'
wp option delete 'document-field-language-singular-name'
wp option delete 'document-field-language-slug'
wp option delete 'document-field-language-hierarchical'
wp option delete 'document-field-language-active'
wp option delete 'document-field-type-name'
wp option delete 'document-field-type-singular-name'
wp option delete 'document-field-type-slug'
wp option delete 'document-field-type-hierarchical'
wp option delete 'document-field-type-active'
wp option delete 'document-field-search-result-unit'
wp option delete 'document-field-perpeage'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'document'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'document'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'document'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'document'"
