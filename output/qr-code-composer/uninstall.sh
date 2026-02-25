#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'qrc_composer_settings'
wp option delete 'qrc_composer_do_activation_edirect'
wp option delete 'qrc_autogenerate'
wp option delete 'qrc_admin_integrate'
wp option delete 'qrc_custom_link_generator'
wp option delete 'qrc_vcard_generator'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = 'qrc_metabox'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = 'qrc_metabox'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = 'qrc_metabox'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = 'qrc_metabox'"
