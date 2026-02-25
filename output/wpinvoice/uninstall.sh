#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ref_type'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ref_prefix'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_ref_number_count'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_round_number_count'"
wp option delete 'eoinvoice_db_version'

