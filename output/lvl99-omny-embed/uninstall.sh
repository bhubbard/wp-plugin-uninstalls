#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete '_lvl99-omny-embed/installed'
wp option delete '_lvl99-omny-embed/version'
wp option delete '_lvl99-plugin/installed'
wp option delete '_lvl99-plugin/version'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'lvl99-plugin/%'"

