#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wp-clickable-background-active'
wp option delete 'wp-clickable-background-javascript'
wp option delete 'wp-clickable-background-class'
wp option delete 'wp-clickable-background-link'
wp option delete 'wp-clickable-background-new'
wp option delete 'wp-clickable-background-form-message'

