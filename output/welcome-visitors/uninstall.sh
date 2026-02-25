#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'welcome_visitor_css_style'
wp option delete 'rss_address'
wp option delete 'welcome_words'
wp option delete 'default'

