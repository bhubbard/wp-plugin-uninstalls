#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'greatrealestate_pageforlistings'
wp option delete 'wpurl'
wp option delete 'greatrealestate_listfeedtitle'
wp option delete 'greatrealestate_listfeeddesc'
wp option delete 'greatrealestate_mls'
wp option delete 'greatrealestate_agent'
wp option delete 'greatrealestate_broker'
wp option delete 'greatrealestate_agentphone'
wp option delete 'greatrealestate_maxfeatured'
wp option delete 'greatrealestate_usecss'
wp option delete 'greatrealestate_nobrand'
wp option delete 'greatrealestate_db_version'
wp option delete 'gre-manual-update-pending'
wp option delete 'gre-2-migration'
wp option delete 'download_path'
wp option delete 'ngg_options'
wp option delete 'download_categories'
wp option delete 'widget_grefeatured'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gre[property-type]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gre[property-type]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gre[property-type]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gre[property-type]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gre[downloads]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gre[downloads]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gre[downloads]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gre[downloads]'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_gre[google-maps][geolocation]'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_gre[google-maps][geolocation]'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_gre[google-maps][geolocation]'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_gre[google-maps][geolocation]'"
