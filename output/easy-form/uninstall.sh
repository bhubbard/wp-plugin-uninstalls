#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ays_quiz_integrations'
wp option delete 'ays_form_db_version'
wp option delete 'ays_form_maker_upgrade_plugin'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_wp_attachment_image_alt'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_wp_attachment_image_alt'"
