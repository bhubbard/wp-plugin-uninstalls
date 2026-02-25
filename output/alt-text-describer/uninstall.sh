#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'prisakaru_alt_describer_lang'
wp option delete 'prisakaru_describer_on_upload'
wp option delete 'prisakaru_atd_api_key'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
