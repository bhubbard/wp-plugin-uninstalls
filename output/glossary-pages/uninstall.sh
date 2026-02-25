#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'glospa_flush_needed'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossary_pages_definition'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossary_pages_definition'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossary_pages_definition'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossary_pages_definition'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossary_pages_synonym'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossary_pages_synonym'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossary_pages_synonym'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossary_pages_synonym'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_glossary_pages_example'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_glossary_pages_example'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_glossary_pages_example'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_glossary_pages_example'"
