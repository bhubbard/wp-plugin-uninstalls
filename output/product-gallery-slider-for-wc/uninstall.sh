#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'pgsfw_layout'
wp option delete 'pgsfw_lstyle'
wp option delete 'pgsfw_msadisable'
wp option delete 'pgsfw_tadisable'
wp option delete 'pgsfw_dgimg'
wp option delete 'pgsfw_dgvgh'
wp option delete 'pgsfw_salp'
wp option delete 'pgsfw_sarp'
wp option delete 'arbgcolor'
wp option delete 'aricolor'
wp option delete 'harbgcolor'
wp option delete 'haricolor'
wp option delete 'mslidersize'
wp option delete 'tarrsize'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_pgsw_youtube_url_field'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_pgsw_youtube_url_field'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_pgsw_youtube_url_field'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_pgsw_youtube_url_field'"
