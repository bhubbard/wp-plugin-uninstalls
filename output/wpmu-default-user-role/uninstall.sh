#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'cets_default_user_role_setup'
wp option delete 'cets_default_user_role_options'
wp option delete 'dashboard_blog'
wp option delete 'default_user_role'

