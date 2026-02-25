#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'blacklist_local'
wp option delete 'blacklist_exclude'
wp option delete 'blacklist_last_update'
wp option delete 'blacklist_github_source_updated'
wp option delete 'use_wordpress_comment_blacklist_splorp'
wp option delete 'apa_another_blacklist_url'
wp option delete '_transient_timeout_blacklist_github_update_check'
wp option delete 'use_wordpress_comment_blacklist_splorp '

# Delete Transients
wp transient delete 'blacklist_update_process'
wp transient delete 'blacklist_github_update_check'

