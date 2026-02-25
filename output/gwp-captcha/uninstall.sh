#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'gwpcaptcha_lettercount'
wp option delete 'gwpcaptcha_register'
wp option delete 'gwpcaptcha_login'
wp option delete 'gwpcaptcha_lostpassword'
wp option delete 'gwpcaptcha_pluginversion'

