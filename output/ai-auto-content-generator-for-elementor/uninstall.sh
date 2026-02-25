#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_remove_notice'"
wp option delete 'aacgfe-installDate'
wp option delete 'aacgfe-ratingDiv'
wp option delete 'aacgfe_initial_save_version'
wp option delete 'aacgfe-install-date'
wp option delete 'aacgfe-version'
wp option delete 'aacgfe-plugin-type'
wp option delete 'aacgfe_plugin_redirect'
wp option delete 'AACGFE_prompt_data'

