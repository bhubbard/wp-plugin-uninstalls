#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cookie_policy_link'
wp option delete 'cookie_accept_button_text'
wp option delete 'cookie_message'
wp option delete 'cookie_what_are_link_text'

