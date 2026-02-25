#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rfb_bbp_recaptcha_registerd_user'
wp option delete '_bbp_allow_anonymous'
wp option delete 'rfb_bbp_recaptcha_site_key'
wp option delete 'rfb_bbp_recaptcha_server_key'

