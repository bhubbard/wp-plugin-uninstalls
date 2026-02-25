#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'audit_methods'
wp option delete 'audit_trail'
wp option delete 'audit_expiry'
wp option delete 'audit_post'
wp option delete 'audit_post_order'
wp option delete 'audit_version'
wp option delete 'audit_ignore'
wp option delete 'audit_support'
wp option delete 'audit_error_log'

