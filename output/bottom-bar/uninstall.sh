#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'bb-lang'
wp option delete 'bb-max-lastposts'
wp option delete 'bb-max-popularposts'
wp option delete 'bb-max-comments'
wp option delete 'bb-services'

