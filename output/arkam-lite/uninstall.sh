#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tt_arkam_lite'

# Delete Transients
wp transient delete 'tt_arkam_lite_activated'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_tt_arkam_lite_%' OR option_name LIKE '_site_transient_tt_arkam_lite_%'"

