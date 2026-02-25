#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'recaptcha_flavor'
wp option delete 'recaptcha_theme'
wp option delete 'recaptcha_disable_submit'
wp option delete 'recaptcha_noscript'
wp option delete 'recaptcha_comment_use_42_filter'
wp option delete 'recaptcha_publickey'
wp option delete 'recaptcha_privatekey'
wp option delete 'recaptcha_language'
wp option delete 'recaptcha_enable_comments'
wp option delete 'recaptcha_enable_signup'
wp option delete 'recaptcha_enable_login'
wp option delete 'recaptcha_enable_lostpw'
wp option delete 'recaptcha_disable_for_known_users'
wp option delete 'recaptcha_lockout'
wp option delete 'wpcf7'
wp option delete 'recaptcha_enable_wc_checkout'
wp option delete 'recaptcha_enable_wc_order'
wp option delete 'recaptcha_enable_as_registration'
wp option delete 'recaptcha_enable_bbp_topic'
wp option delete 'recaptcha_enable_bbp_reply'

# Delete Transients
wp transient delete 'recaptcha_keys_okay'

