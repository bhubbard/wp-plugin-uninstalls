#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'active_sitewide_plugins'
wp option delete 'wc_daw_disable_options'
wp option delete 'wc_daw_select_attribute'
wp option delete 'wc_daw_single_select'
wp option delete 'wc_daw_remove_text'
wp option delete 'wc_daw_max_variations'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'wc_daw_attribute_default-%'"
wp option delete 'wc_daw_first_attribute'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_daw_default_attributes_%' OR option_name LIKE '_site_transient_daw_default_attributes_%'"

