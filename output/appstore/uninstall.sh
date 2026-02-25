#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'AppStore_country'
wp option delete 'AppStore_language'
wp option delete 'AppStore_enableStats'
wp option delete 'AppStore_Loop'
wp option delete 'AppStore_tdlink'
wp option delete 'AppStore_customAffURL'
wp option delete 'AppStore_PHGToken'
wp option delete 'AppStore_showRatings'
wp option delete 'AppStore_picCache'
wp option delete 'AppStore_dataCache'
wp option delete 'AppStore_dlLinkname'
wp option delete 'AppStore_SimpleClickCounter'
wp option delete 'appStore_db_version'
wp option delete 'AppStore_style'

