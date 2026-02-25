#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'FeedChanger_init_redirect_after_activation_option'
wp option delete 'feedChanger'

