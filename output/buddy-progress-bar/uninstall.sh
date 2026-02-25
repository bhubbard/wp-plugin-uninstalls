#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bppp-auto-embed'
wp option delete 'bppp-extra-widget-embed'
wp option delete 'bppp-extra-directory-embed'
wp option delete 'bppp-profile-title-embed'
wp option delete 'bppp-login-title-embed'
wp option delete 'bppp-directory-title-embed'
wp option delete 'bppp-completed-title-embed'
wp option delete 'bppp-award-embed'
wp option delete 'bppp-empty-profile-embed'
wp option delete 'bppp-empty-message-embed'
wp option delete 'bppp-empty-login-embed'
wp option delete 'bppp-points-shares'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_progress_bar_percent_level'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_progress_bar_percent_level'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_progress_bar_percent_level'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_progress_bar_percent_level'"
