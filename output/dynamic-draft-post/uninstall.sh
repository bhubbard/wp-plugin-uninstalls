#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'ddpost_enable_default_post_type'
wp option delete 'ddpost_default_post_type'
wp option delete 'ddpost_enable_notifications'
wp option delete 'ddpost_options'

