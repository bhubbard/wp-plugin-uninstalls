#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mmwcptwd_cpt'
wp option delete 'mmwcptwd_tax'
wp option delete 'mmwcptwd_cwm'
wp option delete 'mmwcptwd'
wp option delete 'mmwcptwd_options'
wp option delete 'last_code'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cpt-taxonomy-image'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cpt-taxonomy-image'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cpt-taxonomy-image'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cpt-taxonomy-image'"
