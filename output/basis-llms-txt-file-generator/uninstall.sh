#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'basis_llms_txt_file_generator_options'
wp option delete 'basis_llms_txt_file_generator_last_generated'

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_basis_llms_txt_file_generator_count_%' OR option_name LIKE '_site_transient_basis_llms_txt_file_generator_count_%'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_basis_llms_txt_file_generator_terms_%' OR option_name LIKE '_site_transient_basis_llms_txt_file_generator_terms_%'"

# Clear Cron Jobs
wp cron event delete 'basis_llms_txt_file_generator_update'
wp cron event delete 'basis_llms_txt_file_generator_immediate_update'

