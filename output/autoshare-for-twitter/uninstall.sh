#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'autoshare_migrate_to_v2_api_notice_dismissed'
wp option delete 'autoshare_ignore_duplicate_site_notice'
wp option delete 'autoshare_liveurl'
wp option delete 'autoshare_for_twitter_accounts'

# Delete Transients
wp transient delete 'autoshare_for_twitter_connection_notice'

