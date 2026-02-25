#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-version'"
wp option delete 'mwm_rrss_actives'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-actives'"
wp option delete 'mwm_rrss_posicion'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-posicion'"
wp option delete 'mwm_rrss_twitter'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-twitter'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-init'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-appearance'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%-alignment'"
wp option delete 'mwm-plugins'
wp option delete 'mwm-plugin-notices'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
