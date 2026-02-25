#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'attention_browser_enable_feature'
wp option delete 'attention_browser_title_texts'
wp option delete 'attention_browser_title_time'
wp option delete 'attention_browser_enable_homepage'

