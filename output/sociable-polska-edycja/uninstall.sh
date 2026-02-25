#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'sociable_awesmapikey'
wp option delete 'sociable_active_sites'
wp option delete 'sociable_imagedir'
wp option delete 'sociable_tagline'
wp option delete 'sociable_awesmenable'
wp option delete 'sociable_useiframe'
wp option delete 'sociable_iframewidth'
wp option delete 'sociable_iframeheight'
wp option delete 'sociable_usetargetblank'
wp option delete 'sociable_usetextlinks'
wp option delete 'sociable_disablesprite'
wp option delete 'sociable_disablealpha'
wp option delete 'sociable_conditionals'
wp option delete 'sociable_usecss'
wp option delete 'sociable_disablewidget'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'sociable_%'"

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sociableoff'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sociableoff'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sociableoff'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sociableoff'"
