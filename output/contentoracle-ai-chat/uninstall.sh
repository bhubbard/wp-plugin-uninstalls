#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%post_types'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%db_version'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%auto_generate_only_new_embeddings'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%ai_results_page'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%organization_name'"

