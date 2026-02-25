#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_landing_pages_enabled'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_redirect'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_activation_date'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_dismiss_review_notice'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%constantcontact_access_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%constantcontact_list_id'"
wp option delete 'cc_mm_activation_redirect'
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_user_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_site_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%_auto_embed'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_token'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_email'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%user_password'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%skip_onboarding'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%data'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%guest_user'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%wordpress_instance_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%site_id'"
wp db query "DELETE FROM wp_options WHERE option_name LIKE '%list_id'"

