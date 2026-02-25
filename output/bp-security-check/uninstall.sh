#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'bp_security_check_%'"
wp option delete 'bp_security_check_type'
wp option delete 'bp_security_check_recaptcha_site_key'
wp option delete 'bp_security_check_recaptcha_secret_key'

