#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hr_rag_db_version'
wp option delete 'hr_rag_options'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hr_rag_context_%' OR option_name LIKE '_site_transient_hr_rag_context_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_hr_rag_history_%' OR option_name LIKE '_site_transient_hr_rag_history_%'"

