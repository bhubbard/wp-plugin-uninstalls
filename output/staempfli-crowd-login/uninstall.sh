#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'staempfli_crowd_login_option_name'
wp option delete 'staempfli_crowd_login_test_option_name'
wp option delete 'staempfli_crowd_login_mode'
wp option delete 'staempfli_crowd_login_securitymode'
wp option delete 'staempfli_crowd_account_type'
wp option delete 'staempfli_crowd_url'
wp option delete 'staempfli_crowd_application_name'
wp option delete 'staempfli_crowd_application_password'
wp option delete 'staempfli_crowd_group'
wp option delete 'staempfli_crowd_test_username'
wp option delete 'staempfli_crowd_test_password'

