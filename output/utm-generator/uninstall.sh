#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'technoUTM_install_analytics'
wp option delete 'technoUTM_analytics_id'
wp option delete 'technoUTM_analytics_position'
wp option delete 'technoUTM_enable_adminbar'
wp option delete 'technoUTM_active_posts'
wp option delete 'technoUTM_default_utm_source'
wp option delete 'technoUTM_default_utm_medium'
wp option delete 'technoUTM_default_utm_campaign'
wp option delete 'technoUTM_default_utm_term'
wp option delete 'technoUTM_default_utm_content'
wp option delete 'technoUTM_active_pages'
wp option delete 'technoUTM_item_id'
wp option delete 'technoUTM_item_checked'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_techno_utm_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_techno_utm_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_techno_utm_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_techno_utm_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_techno_utm_source'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_techno_utm_source'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_techno_utm_source'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_techno_utm_source'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_techno_utm_medium'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_techno_utm_medium'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_techno_utm_medium'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_techno_utm_medium'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_techno_utm_campaign'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_techno_utm_campaign'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_techno_utm_campaign'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_techno_utm_campaign'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_techno_utm_term'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_techno_utm_term'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_techno_utm_term'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_techno_utm_term'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_techno_utm_content'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_techno_utm_content'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_techno_utm_content'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_techno_utm_content'"
