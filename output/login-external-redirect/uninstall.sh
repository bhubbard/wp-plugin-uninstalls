#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'external_redirect_path'
wp option delete 'external_redirect_url'
wp option delete 'external_redirect_method'
wp option delete 'external_redirect'

