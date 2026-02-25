#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hmwl_hide_option'
wp option delete 'hmwl_slug_name'
wp option delete 'hmwl_login_key'
wp option delete 'hmwl_redirect_slug'
wp option delete 'hmwl_hide_elementor'

