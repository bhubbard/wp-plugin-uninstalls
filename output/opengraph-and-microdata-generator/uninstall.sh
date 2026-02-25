#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpogmcappid'
wp option delete 'wpogmcadminid'
wp option delete 'wpogmcthumbnail'
wp option delete 'wpogmclocale'
wp option delete 'wpogmcwordlimit'

