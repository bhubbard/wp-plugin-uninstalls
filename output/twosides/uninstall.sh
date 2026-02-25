#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twosides_admin'
wp option delete 'twosides_docs'
wp option delete 'twosides_debate_date_plugin_activated'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'twosides_commtype'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'twosides_commtype'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'twosides_commtype'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'twosides_commtype'"
