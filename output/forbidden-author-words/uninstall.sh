#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'forbidden_words'
wp option delete 'forbidden_title'
wp option delete 'forbidden_content'
wp option delete 'forbidden_notice'

