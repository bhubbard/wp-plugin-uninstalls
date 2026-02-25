#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'login_awp_feedback_email'
wp option delete 'login_awp_feedback_webhook'

