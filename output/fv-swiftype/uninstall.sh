#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_deferred_notices'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_deferred_errors'"
wp option delete 'fv_swiftype'
wp option delete 'fv_swiftype_last_error'

