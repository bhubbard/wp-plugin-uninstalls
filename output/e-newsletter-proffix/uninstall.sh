#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'proffix_newsletter_settings_error'
wp option delete 'proffix_newsletter_default_url'
wp option delete 'proffix_newsletter_default_db'
wp option delete 'proffix_newsletter_default_list'
wp option delete 'proffix_newsletter_settings_success'
wp option delete 'proffix_newsletter_default_show_name'
wp option delete 'proffix_newsletter_default_description'

