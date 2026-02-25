#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'twitter-username'
wp option delete 'adn-username'
wp option delete 'enable-reply-tool'
wp option delete 'display-above-posts'
wp option delete 'display-below-posts'

