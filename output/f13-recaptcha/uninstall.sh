#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'f13_recaptcha_enable'
wp option delete 'f13_recaptcha_private_key'
wp option delete 'f13_recaptcha_public_key'

