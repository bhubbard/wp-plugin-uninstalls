#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_landing_pages_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_review_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%mailchimp_list_id'"
wp option delete 'mc_mm_activation_redirect'

