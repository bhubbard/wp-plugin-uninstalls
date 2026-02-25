#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cfv-enable-comment-validation'
wp option delete 'cfv-prevenr-die'
wp option delete 'cfv-comment-post-label'

