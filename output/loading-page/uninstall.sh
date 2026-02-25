#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'installed_%'"
wp option delete 'loading_page_options'
wp option delete 'elementor_maintenance_mode_mode'
wp option delete 'elementor_maintenance_mode_exclude_mode'
wp option delete 'elementor_maintenance_mode_exclude_roles'
wp option delete 'loading_page_video_tutorial'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_codepeople_promote_banner_%' OR option_name LIKE '_site_transient_codepeople_promote_banner_%'"

