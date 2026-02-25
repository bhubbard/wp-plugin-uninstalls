#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'eli_db_version'
wp option delete 'wdk_listing_page'
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'elementinvader_addons_for_elementor_form_%'"

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_eli_form_token_%' OR option_name LIKE '_site_transient_eli_form_token_%'"

