#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_reputationgenius_comments_%' OR option_name LIKE '_site_transient_reputationgenius_comments_%'"
wp transient delete 'reputationgenius_comments_generic'

