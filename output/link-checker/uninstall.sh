#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'link-checker-token'
wp option delete 'link-checker-max-fetchers'
wp option delete 'link-checker-login-page-url'
wp option delete 'link-checker-login-form-selector'
wp option delete 'link-checker-login-data'

