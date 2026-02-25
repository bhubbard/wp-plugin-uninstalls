#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'siwscp_select2'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%wfcerror' OR option_name LIKE '_site_transient_%wfcerror'"

