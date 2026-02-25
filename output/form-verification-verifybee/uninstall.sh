#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cn_verification'
wp option delete 'cn_token'
wp option delete 'cn_verify_widget_key'

