#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intefocf_textdrip_api_key'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'intefocf_cf7form_campaign_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'intefocf_cf7form_%'"

