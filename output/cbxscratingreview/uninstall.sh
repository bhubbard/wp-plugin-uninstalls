#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cbxscratingreview_tools'

# Delete Transients
wp transient delete 'cbxscratingreview_upgraded_notice'
wp transient delete 'cbxscratingreview_activated_notice'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxscratingreview_avg'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxscratingreview_avg'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxscratingreview_avg'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxscratingreview_avg'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_cbxscratingreview_total'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_cbxscratingreview_total'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_cbxscratingreview_total'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_cbxscratingreview_total'"
