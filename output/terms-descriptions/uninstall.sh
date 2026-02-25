#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'td_options'
wp option delete 'td_db_version'
wp option delete 'td_terms'
wp option delete 'td_class'
wp option delete 'td_count'
wp option delete 'td_convert_only_single'
wp option delete 'td_target'
wp option delete 'test'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_disable_terms_descriptions'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_disable_terms_descriptions'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_disable_terms_descriptions'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_disable_terms_descriptions'"
