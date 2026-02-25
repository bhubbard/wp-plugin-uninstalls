#!/bin/bash
# WP-CLI Uninstall Script

# Delete Options
wp option delete 'hsd_do_activation_redirect'
wp option delete 'hsd_current_version'

