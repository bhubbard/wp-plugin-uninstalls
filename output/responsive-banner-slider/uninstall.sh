#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'banner_slidereffect'
wp option delete 'banner_transitiontime'
wp option delete 'banner_pausetime'
wp option delete 'banner_prevnextbtn'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%url'"
