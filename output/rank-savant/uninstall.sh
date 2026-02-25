#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ranksavant-cache-status'
wp option delete 'ranksavant-key'
wp option delete 'ranksavant-verify-status'
wp option delete 'ranksavant-verify-curl-body'
wp option delete 'ranksavant-containers'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_ranksavant_container_%' OR option_name LIKE '_site_transient_ranksavant_container_%'"

