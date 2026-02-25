#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'invisible_recaptcha_sitekey'
wp option delete 'invisible_recaptcha_secretkey'
wp option delete 'invisible_recaptcha_badge'
wp option delete 'invisible_recaptcha_badge_position'
wp option delete 'invisible_recaptcha_button_class'
wp option delete 'invisible_recaptcha_badge_exclude'
wp option delete 'invisible_recaptcha_enable'
wp option delete 'wpgdprc_integrations_contact-form-7_error_message'

# Direct DB Queries (Fallback)
wp db query "DELETE FROM wp_postmeta WHERE meta_key = '_messages'"
wp db query "DELETE FROM wp_usermeta WHERE meta_key = '_messages'"
wp db query "DELETE FROM wp_termmeta WHERE meta_key = '_messages'"
wp db query "DELETE FROM wp_commentmeta WHERE meta_key = '_messages'"
