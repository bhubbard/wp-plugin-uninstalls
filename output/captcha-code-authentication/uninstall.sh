#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wpcaptcha_login'
wp option delete 'wpcaptcha_register'
wp option delete 'wpcaptcha_lost'
wp option delete 'wpcaptcha_comments'
wp option delete 'wpcaptcha_registered'
wp option delete 'wpcaptcha_type'
wp option delete 'wpcaptcha_letters'
wp option delete 'wpcaptcha_total_no_of_characters'

