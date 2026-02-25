#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'disable_feeds_option'
wp option delete 'disable_feeds_redirect'
wp option delete 'disable_feeds_allow_main'

