#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gp_rewrite_rule'
wp option delete 'gp_db_version'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'gp_source_url_templates'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'gp_source_url_templates'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'gp_source_url_templates'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'gp_source_url_templates'"
