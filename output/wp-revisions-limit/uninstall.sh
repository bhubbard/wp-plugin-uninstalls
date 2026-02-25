#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'revisions_limit_option'
wp option delete 'revisions_limit_activation_redirect'

