#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp db query "DELETE FROM wp_options WHERE option_name LIKE 'micaptcha_%'"
wp option delete 'micaptcha_loading_mode'
wp option delete 'micaptcha_type'
wp option delete 'micaptcha_letters'
wp option delete 'micaptcha_total_no_of_characters'
wp option delete 'micaptcha_use_curve'
wp option delete 'micaptcha_use_noise'
wp option delete 'micaptcha_distort'
wp option delete 'micaptcha_allowlist_ips'
wp option delete 'micaptcha_timeout_time'
wp option delete 'micaptcha_case_sensitive'
wp option delete 'micaptcha_login'
wp option delete 'micaptcha_password'
wp option delete 'micaptcha_register'
wp option delete 'micaptcha_lost'
wp option delete 'micaptcha_comments'
wp option delete 'micaptcha_registered'

