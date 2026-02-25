#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mgd_repo_setting'
wp option delete 'mgd_do_activation_redirect'
wp option delete 'mgd_cron_setting'
wp option delete 'mgd_glob_setting'
wp option delete 'mgd_resolver_setting'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mgd_last_updated'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mgd_last_updated'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mgd_last_updated'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mgd_last_updated'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'mgd_local_last_commit'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'mgd_local_last_commit'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'mgd_local_last_commit'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'mgd_local_last_commit'"
