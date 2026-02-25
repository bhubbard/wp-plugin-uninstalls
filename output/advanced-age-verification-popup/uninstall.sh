#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'avp_cookie_duration'
wp option delete 'avp_redirect_url'
wp option delete 'avp_logo'
wp option delete 'avp_title'
wp option delete 'avp_enter_text'
wp option delete 'avp_exit_text'
wp option delete 'avp_verification_method'

