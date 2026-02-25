#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wsatc_options'
wp option delete 'wsatc_bfn_dismiss'
wp option delete 'wsatc_arn_dismiss'
wp option delete 'wsatc_amn_dismiss'
wp option delete 'wastc_activation_time'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sc_meta_clicks'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sc_meta_clicks'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sc_meta_clicks'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sc_meta_clicks'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sc_meta_impression_per_day'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sc_meta_impression_per_day'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sc_meta_impression_per_day'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sc_meta_impression_per_day'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_sc_meta_views'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_sc_meta_views'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_sc_meta_views'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_sc_meta_views'"
