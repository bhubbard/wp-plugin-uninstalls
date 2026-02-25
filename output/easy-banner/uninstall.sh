#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'easy_banner_enabled'
wp option delete 'easy_banner_title'
wp option delete 'easy_banner_description'
wp option delete 'easy_banner_link_text'
wp option delete 'easy_banner_link'

