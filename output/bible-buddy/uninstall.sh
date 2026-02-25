#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'display_card_on_posts'
wp option delete 'display_card_on_pages'
wp option delete 'format'
wp option delete 'theme'
wp option delete 'display_credit_link'

