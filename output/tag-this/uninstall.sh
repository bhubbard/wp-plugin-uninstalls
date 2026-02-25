#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tt_secret'
wp option delete 'tt_display'
wp option delete 'tt_spamstrength'
wp option delete 'tt_customcss'
wp option delete 'tt_displaytags'
wp option delete 'tt_manualmod'
wp option delete 'tt_nfrontpage'

