#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'phpbbdb_host'
wp option delete 'phpbbdb_name'
wp option delete 'phpbbdb_user'
wp option delete 'phpbbdb_pass'
wp option delete 'phpbbdb_prefix'
wp option delete 'phpbb_forum_url'
wp option delete 'phpbb_seo_enabled'

