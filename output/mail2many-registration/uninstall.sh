#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'mail2many_api_key'
wp option delete 'mail2many_api_server'
wp option delete 'mail2many_form_privacy_text'

