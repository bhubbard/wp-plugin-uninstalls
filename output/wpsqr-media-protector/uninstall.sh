#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpsqmepr_image_processing_progress'
wp option delete 'wpsqmepr_activation_redirect'

# Delete Transients
wp transient delete 'wpsqmepr_cancelled'
wp transient delete 'wpsqmepr_image_deletion_error'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_%_process_lock' OR option_name LIKE '_site_transient_%_process_lock'"

