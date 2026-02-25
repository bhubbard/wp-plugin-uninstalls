#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hide_content_message'
wp option delete 'hide_content_links'
wp option delete 'hide_content_text_signup'
wp option delete 'hide_content_url_signup'
wp option delete 'hide_content_text_login'
wp option delete 'hide_content_url_login'

