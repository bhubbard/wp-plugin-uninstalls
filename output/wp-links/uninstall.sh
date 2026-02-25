#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'WPLINKS-nofollow'
wp option delete 'WPLINKS-comments'
wp option delete 'WPLINKS-excerpt'
wp option delete 'WPLINKS-title'
wp option delete 'WPLINKS-external-image'
wp option delete 'WPLINKS-open'
wp option delete 'WPLINKS-image'
wp option delete 'WPLINKS-whitelist'
wp option delete 'WPLINKS-title-shortcode'

