#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'rss_language'
wp option delete 'oni_daiko_title'
wp option delete 'oni_daiko_limit'
wp option delete 'oni_daiko_contents'
wp option delete 'oni_daiko_text_limit'

