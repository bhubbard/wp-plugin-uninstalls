#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'subscribers_lang'
wp option delete 'subscribers_hash'
wp option delete 'subscribers_plugin_do_activation_redirect'

