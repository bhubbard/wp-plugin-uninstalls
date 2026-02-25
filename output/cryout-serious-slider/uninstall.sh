#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cryout_serious_slider_link'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cryout_serious_slider_link'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cryout_serious_slider_link'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cryout_serious_slider_link'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'cryout_serious_slider_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'cryout_serious_slider_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'cryout_serious_slider_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'cryout_serious_slider_target'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE 'cryout_serious_slider_button%'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE 'cryout_serious_slider_button%'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE 'cryout_serious_slider_button%'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE 'cryout_serious_slider_button%'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_url'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key LIKE '%_target'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key LIKE '%_target'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key LIKE '%_target'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key LIKE '%_target'"
