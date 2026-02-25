#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'border_hadith_color'
wp option delete 'border_hadith_bloc'
wp option delete 'background_hadith_bloc'
wp option delete 'color_hadith_ref'
wp option delete 'background_hadith_ref'
wp option delete 'hadith_custum_css'

