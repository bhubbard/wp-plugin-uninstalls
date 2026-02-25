#!/bin/bash
# WP-CLI Uninstall Script

# Delete Transients
wp db query "DELETE FROM wp_options WHERE option_name LIKE '_transient_mailster_mailchimp_api_request_%' OR option_name LIKE '_site_transient_mailster_mailchimp_api_request_%'"

