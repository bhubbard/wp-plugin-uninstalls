#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'protect_admin_login'
wp option delete 'cus_redirect'

