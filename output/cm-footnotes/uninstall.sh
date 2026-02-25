#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmf_footnoteSimpleFilterPriority'
wp option delete 'cmf_footnote_recorded_plugin_version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registration-skipped'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-registered'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-was-registered'"
wp option delete 'active_sitewide_plugins'
wp option delete 'cmf_options'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_footnote_disable_footnote_for_page'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_footnote_disable_footnote_for_page'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_footnote_disable_footnote_for_page'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_footnote_disable_footnote_for_page'"
