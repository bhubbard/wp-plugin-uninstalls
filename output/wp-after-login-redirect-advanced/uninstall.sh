#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'wplra_login_redirect_enable'
wp option delete 'wplra_login_redirect_filters'

