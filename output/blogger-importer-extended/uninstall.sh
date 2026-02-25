#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bie_license'
wp option delete 'bie_hide_setup_notice'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bie_blogspot_domain_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bie_page_token_%'"
wp option delete 'bie_settings'
wp option delete 'bie_hide_redirects_plugin_notice'
wp option delete 'bie_installed_date'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_thumbnail_id'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_thumbnail_id'"
