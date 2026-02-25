#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'tz_email'
wp option delete 'formstyle'
wp option delete 'dpbsf_plugin_do_activation_redirect'

