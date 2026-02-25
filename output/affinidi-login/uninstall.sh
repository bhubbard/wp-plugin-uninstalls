#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'affinidi_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_affinidi_user_redirect_to%' OR option_name LIKE '_site_transient_affinidi_user_redirect_to%'"

