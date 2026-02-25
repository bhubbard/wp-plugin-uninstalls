#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ns_code_to_add_cc_option'
wp option delete 'ns_code_to_add_cc_option_tab'
wp option delete 'ns_code_to_add_cc_option_mobile'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'pe-plugin-id-response-%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'plugineye_init%'"

