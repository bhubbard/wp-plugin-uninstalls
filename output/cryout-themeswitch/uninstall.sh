#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'allowedthemes'
wp option delete 'cryout_favorite_themes'
wp option delete 'cryout_themeswitch'

# Delete Transients
wp transient delete 'cryout_themeswitch_lasturl'

