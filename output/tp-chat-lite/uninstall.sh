#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tpcl_phone_option'
wp option delete 'tpcl_support_option'
wp option delete 'tpcl_plugin_do_activation_redirect'
wp option delete 'tpcl_installed'

