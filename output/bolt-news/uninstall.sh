#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bolt_news_enable'
wp option delete 'bolt_news_label'
wp option delete 'bolt_news_data'
wp option delete 'bolt_news_titolo'
wp option delete 'bolt_news_testo'

