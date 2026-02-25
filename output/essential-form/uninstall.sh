#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'essential_form'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_essential_form_key_%' OR option_name LIKE '_site_transient_essential_form_key_%'"

