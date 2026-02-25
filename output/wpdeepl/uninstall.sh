#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'deepl_default_locale'
wp option delete 'wpdeepl_api_key'
wp option delete 'wpdeepl_api_server'
wp option delete 'wpdeepl_glossaries'
wp option delete 'wpdeepl_log_level'
wp option delete 'wpdeepl_metabox_post_types'
wp option delete 'wpdeepl_pro_post_types'
wp option delete 'wpdeepl_metabox_behaviour'
wp option delete 'wpdeepl_default_language'
wp option delete 'wpdeepl_displayed_languages'
wp option delete 'wpdeepl_metabox_context'
wp option delete 'wpdeepl_metabox_priority'
wp option delete 'wpdeepl_plugin_installed'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wpdeepl_formality_%'"
wp option delete 'wpdeepl_default_formality'
wp option delete 'wpdeepl_contents_to_translate'
wp option delete 'wpdeepl_target_locales'
wp option delete 'wpdeepl_bulk_target_locales'
wp option delete 'deepl_plugin_installed'
wp option delete 'wpdeepl_allow_front_end'

