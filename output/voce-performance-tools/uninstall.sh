#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tlc_up__%' OR option_name LIKE '_site_transient_tlc_up__%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tlc__%' OR option_name LIKE '_site_transient_tlc__%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_nsa_action%' OR option_name LIKE '_site_transient_nsa_action%'"

