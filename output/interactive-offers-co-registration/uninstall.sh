#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'intof-publisher-id'
wp option delete 'intof-site-tag'
wp option delete 'optional-success-url'

