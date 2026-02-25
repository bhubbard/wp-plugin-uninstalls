#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'um_options'
wp option delete 'um_recaptcha_version'
wp option delete 'um_recaptcha_last_version_upgrade'

