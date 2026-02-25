#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recaptchalogin_public_key'
wp option delete 'recaptchalogin_private_key'
wp option delete 'recaptchalogin_welcome_heading'
wp option delete 'recaptchalogin_avatar'
wp option delete 'recaptchalogin_logged_in_links'
wp option delete 'recaptchalogin_logout_redirect'
wp option delete 'recaptchalogin_heading'
wp option delete 'recaptchalogin_login_redirect'
wp option delete 'recaptchalogin_register_link'
wp option delete 'recaptchalogin_forgotton_link'
wp option delete 'recaptchalogin_color'
wp option delete 'recaptcha_options'

