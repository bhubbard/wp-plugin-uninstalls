#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cmd-pages'
wp option delete 'cmd-posts'
wp option delete 'cmd-links'
wp option delete 'cmd-widgets'
wp option delete 'cmd-menu'
wp option delete 'cmd-users'
wp option delete 'cmd-media'
wp option delete 'cmd-comments'
wp option delete 'cmd-plugins'
wp option delete 'cmd-settings'

