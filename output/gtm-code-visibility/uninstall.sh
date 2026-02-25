#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'gtm_code_%'"
wp option delete 'gtm_code_head'
wp option delete 'gtm_code_body'

