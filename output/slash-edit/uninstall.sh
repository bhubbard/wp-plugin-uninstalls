#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'slash_edit_install'
wp option delete 'slash_edit_version'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_slash_edit_token_%' OR option_name LIKE '_site_transient_slash_edit_token_%'"

