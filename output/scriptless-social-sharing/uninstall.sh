#!/bin/bash
# WP-CLI Uninstall Script

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_yoast_wpseo_twitter-title'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scriptlesssocialsharing_description'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scriptlesssocialsharing_description'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scriptlesssocialsharing_description'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scriptlesssocialsharing_description'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scriptlesssocialsharing_pinterest'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scriptlesssocialsharing_pinterest'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scriptlesssocialsharing_pinterest'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scriptlesssocialsharing_pinterest'"
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_scriptlesssocialsharing_disable'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_scriptlesssocialsharing_disable'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_scriptlesssocialsharing_disable'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_scriptlesssocialsharing_disable'"
