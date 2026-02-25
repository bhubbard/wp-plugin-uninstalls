#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cgarb_enable'
wp option delete 'cgarb_css'
wp option delete 'captcha_garb_install'

