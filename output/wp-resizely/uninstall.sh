#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-resizely-version'
wp option delete 'wp-resizely'
wp option delete 'ud::customer_key'
wp option delete 'ud::site_uid'
wp option delete 'wpp::splash::new_installation'
wp option delete 'wpp::splash::upgrade'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_log'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'featured'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'featured'"
